; ModuleID = '/home/carl/AnghaBench/libgit2/src/transports/extr_smart_protocol.c_no_sideband.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/transports/extr_smart_protocol.c_no_sideband.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.git_odb_writepack = type { i64 (%struct.git_odb_writepack*, i32, i32, i32*)*, i64 (%struct.git_odb_writepack*, i32*)* }
%struct.TYPE_10__ = type { i32, i32 }

@GIT_ERROR_NET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"The fetch was cancelled by the user\00", align 1
@GIT_EUSER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, %struct.git_odb_writepack*, %struct.TYPE_10__*, i32*)* @no_sideband to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @no_sideband(%struct.TYPE_9__* %0, %struct.git_odb_writepack* %1, %struct.TYPE_10__* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.git_odb_writepack*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store %struct.git_odb_writepack* %1, %struct.git_odb_writepack** %7, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %8, align 8
  store i32* %3, i32** %9, align 8
  br label %11

11:                                               ; preds = %48, %4
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %11
  %18 = load i32, i32* @GIT_ERROR_NET, align 4
  %19 = call i32 @git_error_set(i32 %18, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @GIT_EUSER, align 4
  store i32 %20, i32* %5, align 4
  br label %61

21:                                               ; preds = %11
  %22 = load %struct.git_odb_writepack*, %struct.git_odb_writepack** %7, align 8
  %23 = getelementptr inbounds %struct.git_odb_writepack, %struct.git_odb_writepack* %22, i32 0, i32 0
  %24 = load i64 (%struct.git_odb_writepack*, i32, i32, i32*)*, i64 (%struct.git_odb_writepack*, i32, i32, i32*)** %23, align 8
  %25 = load %struct.git_odb_writepack*, %struct.git_odb_writepack** %7, align 8
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32*, i32** %9, align 8
  %33 = call i64 %24(%struct.git_odb_writepack* %25, i32 %28, i32 %31, i32* %32)
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %21
  store i32 -1, i32* %5, align 4
  br label %61

36:                                               ; preds = %21
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @gitno_consume_n(%struct.TYPE_10__* %37, i32 %40)
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %43 = call i32 @gitno_recv(%struct.TYPE_10__* %42)
  store i32 %43, i32* %10, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %36
  %46 = load i32, i32* %10, align 4
  store i32 %46, i32* %5, align 4
  br label %61

47:                                               ; preds = %36
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %10, align 4
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %11, label %51

51:                                               ; preds = %48
  %52 = load %struct.git_odb_writepack*, %struct.git_odb_writepack** %7, align 8
  %53 = getelementptr inbounds %struct.git_odb_writepack, %struct.git_odb_writepack* %52, i32 0, i32 1
  %54 = load i64 (%struct.git_odb_writepack*, i32*)*, i64 (%struct.git_odb_writepack*, i32*)** %53, align 8
  %55 = load %struct.git_odb_writepack*, %struct.git_odb_writepack** %7, align 8
  %56 = load i32*, i32** %9, align 8
  %57 = call i64 %54(%struct.git_odb_writepack* %55, i32* %56)
  %58 = icmp slt i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %51
  store i32 -1, i32* %5, align 4
  br label %61

60:                                               ; preds = %51
  store i32 0, i32* %5, align 4
  br label %61

61:                                               ; preds = %60, %59, %45, %35, %17
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local i32 @git_error_set(i32, i8*) #1

declare dso_local i32 @gitno_consume_n(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @gitno_recv(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
