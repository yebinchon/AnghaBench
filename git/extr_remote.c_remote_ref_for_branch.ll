; ModuleID = '/home/carl/AnghaBench/git/extr_remote.c_remote_ref_for_branch.c'
source_filename = "/home/carl/AnghaBench/git/extr_remote.c_remote_ref_for_branch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.branch = type { i8**, i32, i64 }
%struct.remote = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @remote_ref_for_branch(%struct.branch* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.branch*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.remote*, align 8
  store %struct.branch* %0, %struct.branch** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %11 = load %struct.branch*, %struct.branch** %5, align 8
  %12 = icmp ne %struct.branch* %11, null
  br i1 %12, label %13, label %63

13:                                               ; preds = %3
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %33, label %16

16:                                               ; preds = %13
  %17 = load %struct.branch*, %struct.branch** %5, align 8
  %18 = getelementptr inbounds %struct.branch, %struct.branch* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %16
  %22 = load i32*, i32** %7, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = load i32*, i32** %7, align 8
  store i32 1, i32* %25, align 4
  br label %26

26:                                               ; preds = %24, %21
  %27 = load %struct.branch*, %struct.branch** %5, align 8
  %28 = getelementptr inbounds %struct.branch, %struct.branch* %27, i32 0, i32 0
  %29 = load i8**, i8*** %28, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 0
  %31 = load i8*, i8** %30, align 8
  store i8* %31, i8** %4, align 8
  br label %69

32:                                               ; preds = %16
  br label %62

33:                                               ; preds = %13
  %34 = load %struct.branch*, %struct.branch** %5, align 8
  %35 = call i8* @pushremote_for_branch(%struct.branch* %34, i32* null)
  store i8* %35, i8** %9, align 8
  %36 = load i8*, i8** %9, align 8
  %37 = call %struct.remote* @remote_get(i8* %36)
  store %struct.remote* %37, %struct.remote** %10, align 8
  %38 = load %struct.remote*, %struct.remote** %10, align 8
  %39 = icmp ne %struct.remote* %38, null
  br i1 %39, label %40, label %61

40:                                               ; preds = %33
  %41 = load %struct.remote*, %struct.remote** %10, align 8
  %42 = getelementptr inbounds %struct.remote, %struct.remote* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %61

46:                                               ; preds = %40
  %47 = load %struct.remote*, %struct.remote** %10, align 8
  %48 = getelementptr inbounds %struct.remote, %struct.remote* %47, i32 0, i32 0
  %49 = load %struct.branch*, %struct.branch** %5, align 8
  %50 = getelementptr inbounds %struct.branch, %struct.branch* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i8* @apply_refspecs(%struct.TYPE_2__* %48, i32 %51)
  store i8* %52, i8** %8, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %61

54:                                               ; preds = %46
  %55 = load i32*, i32** %7, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = load i32*, i32** %7, align 8
  store i32 1, i32* %58, align 4
  br label %59

59:                                               ; preds = %57, %54
  %60 = load i8*, i8** %8, align 8
  store i8* %60, i8** %4, align 8
  br label %69

61:                                               ; preds = %46, %40, %33
  br label %62

62:                                               ; preds = %61, %32
  br label %63

63:                                               ; preds = %62, %3
  %64 = load i32*, i32** %7, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %68

66:                                               ; preds = %63
  %67 = load i32*, i32** %7, align 8
  store i32 0, i32* %67, align 4
  br label %68

68:                                               ; preds = %66, %63
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %69

69:                                               ; preds = %68, %59, %26
  %70 = load i8*, i8** %4, align 8
  ret i8* %70
}

declare dso_local i8* @pushremote_for_branch(%struct.branch*, i32*) #1

declare dso_local %struct.remote* @remote_get(i8*) #1

declare dso_local i8* @apply_refspecs(%struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
