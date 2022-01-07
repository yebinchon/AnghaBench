; ModuleID = '/home/carl/AnghaBench/linux/arch/um/drivers/extr_chan_kern.c_chan_pair_config_string.c'
source_filename = "/home/carl/AnghaBench/linux/arch/um/drivers/extr_chan_kern.c_chan_pair_config_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chan = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [2 x i8] c",\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.chan*, %struct.chan*, i8*, i32, i8**)* @chan_pair_config_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chan_pair_config_string(%struct.chan* %0, %struct.chan* %1, i8* %2, i32 %3, i8** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.chan*, align 8
  %8 = alloca %struct.chan*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca i32, align 4
  store %struct.chan* %0, %struct.chan** %7, align 8
  store %struct.chan* %1, %struct.chan** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8** %4, i8*** %11, align 8
  %13 = load %struct.chan*, %struct.chan** %7, align 8
  %14 = load i8*, i8** %9, align 8
  %15 = load i32, i32* %10, align 4
  %16 = load i8**, i8*** %11, align 8
  %17 = call i32 @one_chan_config_string(%struct.chan* %13, i8* %14, i32 %15, i8** %16)
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* %12, align 4
  %19 = load i8*, i8** %9, align 8
  %20 = sext i32 %18 to i64
  %21 = getelementptr inbounds i8, i8* %19, i64 %20
  store i8* %21, i8** %9, align 8
  %22 = load i32, i32* %12, align 4
  %23 = load i32, i32* %10, align 4
  %24 = sub nsw i32 %23, %22
  store i32 %24, i32* %10, align 4
  %25 = load %struct.chan*, %struct.chan** %7, align 8
  %26 = load %struct.chan*, %struct.chan** %8, align 8
  %27 = icmp eq %struct.chan* %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %5
  %29 = load i8*, i8** %9, align 8
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* %12, align 4
  %32 = call i32 @CONFIG_CHUNK(i8* %29, i32 %30, i32 %31, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 1)
  %33 = load i32, i32* %12, align 4
  store i32 %33, i32* %6, align 4
  br label %56

34:                                               ; preds = %5
  %35 = load i8*, i8** %9, align 8
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %12, align 4
  %38 = call i32 @CONFIG_CHUNK(i8* %35, i32 %36, i32 %37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 1)
  %39 = load %struct.chan*, %struct.chan** %8, align 8
  %40 = load i8*, i8** %9, align 8
  %41 = load i32, i32* %10, align 4
  %42 = load i8**, i8*** %11, align 8
  %43 = call i32 @one_chan_config_string(%struct.chan* %39, i8* %40, i32 %41, i8** %42)
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %12, align 4
  %45 = load i8*, i8** %9, align 8
  %46 = sext i32 %44 to i64
  %47 = getelementptr inbounds i8, i8* %45, i64 %46
  store i8* %47, i8** %9, align 8
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* %10, align 4
  %50 = sub nsw i32 %49, %48
  store i32 %50, i32* %10, align 4
  %51 = load i8*, i8** %9, align 8
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %12, align 4
  %54 = call i32 @CONFIG_CHUNK(i8* %51, i32 %52, i32 %53, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 1)
  %55 = load i32, i32* %12, align 4
  store i32 %55, i32* %6, align 4
  br label %56

56:                                               ; preds = %34, %28
  %57 = load i32, i32* %6, align 4
  ret i32 %57
}

declare dso_local i32 @one_chan_config_string(%struct.chan*, i8*, i32, i8**) #1

declare dso_local i32 @CONFIG_CHUNK(i8*, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
