; ModuleID = '/home/carl/AnghaBench/git/extr_serve.c_get_capability.c'
source_filename = "/home/carl/AnghaBench/git/extr_serve.c_get_capability.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.protocol_capability = type { i32 }

@capabilities = common dso_local global %struct.protocol_capability* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.protocol_capability* (i8*)* @get_capability to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.protocol_capability* @get_capability(i8* %0) #0 {
  %2 = alloca %struct.protocol_capability*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.protocol_capability*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.protocol_capability* null, %struct.protocol_capability** %2, align 8
  br label %43

10:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %39, %10
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.protocol_capability*, %struct.protocol_capability** @capabilities, align 8
  %14 = call i32 @ARRAY_SIZE(%struct.protocol_capability* %13)
  %15 = icmp slt i32 %12, %14
  br i1 %15, label %16, label %42

16:                                               ; preds = %11
  %17 = load %struct.protocol_capability*, %struct.protocol_capability** @capabilities, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.protocol_capability, %struct.protocol_capability* %17, i64 %19
  store %struct.protocol_capability* %20, %struct.protocol_capability** %5, align 8
  %21 = load i8*, i8** %3, align 8
  %22 = load %struct.protocol_capability*, %struct.protocol_capability** %5, align 8
  %23 = getelementptr inbounds %struct.protocol_capability, %struct.protocol_capability* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @skip_prefix(i8* %21, i32 %24, i8** %6)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %16
  %28 = load i8*, i8** %6, align 8
  %29 = load i8, i8* %28, align 1
  %30 = icmp ne i8 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %27
  %32 = load i8*, i8** %6, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 61
  br i1 %35, label %36, label %38

36:                                               ; preds = %31, %27
  %37 = load %struct.protocol_capability*, %struct.protocol_capability** %5, align 8
  store %struct.protocol_capability* %37, %struct.protocol_capability** %2, align 8
  br label %43

38:                                               ; preds = %31, %16
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %4, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %4, align 4
  br label %11

42:                                               ; preds = %11
  store %struct.protocol_capability* null, %struct.protocol_capability** %2, align 8
  br label %43

43:                                               ; preds = %42, %36, %9
  %44 = load %struct.protocol_capability*, %struct.protocol_capability** %2, align 8
  ret %struct.protocol_capability* %44
}

declare dso_local i32 @ARRAY_SIZE(%struct.protocol_capability*) #1

declare dso_local i64 @skip_prefix(i8*, i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
