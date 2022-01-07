; ModuleID = '/home/carl/AnghaBench/lede/package/boot/rbcfg/src/extr_main.c_rbcfg_env_get_u32.c'
source_filename = "/home/carl/AnghaBench/lede/package/boot/rbcfg/src/extr_main.c_rbcfg_env_get_u32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rbcfg_env = type { i8*, i32 }
%struct.rbcfg_value = type { i8* }

@rbcfg_ctx = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"unknown value %08x found for %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.rbcfg_env*)* @rbcfg_env_get_u32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @rbcfg_env_get_u32(%struct.rbcfg_env* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.rbcfg_env*, align 8
  %4 = alloca %struct.rbcfg_value*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.rbcfg_env* %0, %struct.rbcfg_env** %3, align 8
  %7 = load i32, i32* @rbcfg_ctx, align 4
  %8 = load %struct.rbcfg_env*, %struct.rbcfg_env** %3, align 8
  %9 = getelementptr inbounds %struct.rbcfg_env, %struct.rbcfg_env* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @rbcfg_get_u32(i32 %7, i32 %10, i32* %5)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %32

15:                                               ; preds = %1
  %16 = load %struct.rbcfg_env*, %struct.rbcfg_env** %3, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call %struct.rbcfg_value* @rbcfg_env_find_u32(%struct.rbcfg_env* %16, i32 %17)
  store %struct.rbcfg_value* %18, %struct.rbcfg_value** %4, align 8
  %19 = load %struct.rbcfg_value*, %struct.rbcfg_value** %4, align 8
  %20 = icmp eq %struct.rbcfg_value* %19, null
  br i1 %20, label %21, label %28

21:                                               ; preds = %15
  %22 = load i32, i32* @stderr, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.rbcfg_env*, %struct.rbcfg_env** %3, align 8
  %25 = getelementptr inbounds %struct.rbcfg_env, %struct.rbcfg_env* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @fprintf(i32 %22, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %23, i8* %26)
  store i8* null, i8** %2, align 8
  br label %32

28:                                               ; preds = %15
  %29 = load %struct.rbcfg_value*, %struct.rbcfg_value** %4, align 8
  %30 = getelementptr inbounds %struct.rbcfg_value, %struct.rbcfg_value* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  store i8* %31, i8** %2, align 8
  br label %32

32:                                               ; preds = %28, %21, %14
  %33 = load i8*, i8** %2, align 8
  ret i8* %33
}

declare dso_local i32 @rbcfg_get_u32(i32, i32, i32*) #1

declare dso_local %struct.rbcfg_value* @rbcfg_env_find_u32(%struct.rbcfg_env*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
