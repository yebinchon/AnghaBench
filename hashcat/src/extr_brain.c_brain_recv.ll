; ModuleID = '/home/carl/AnghaBench/hashcat/src/extr_brain.c_brain_recv.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/extr_brain.c_brain_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@BRAIN_LINK_CHUNK_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @brain_recv(i32 %0, i8* %1, i64 %2, i32 %3, i32* %4, %struct.TYPE_4__* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_4__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i32 %0, i32* %8, align 4
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store %struct.TYPE_4__* %5, %struct.TYPE_4__** %13, align 8
  %17 = load i8*, i8** %9, align 8
  store i8* %17, i8** %14, align 8
  %18 = load i64, i64* %10, align 8
  store i64 %18, i64* %16, align 8
  store i64 0, i64* %15, align 8
  br label %19

19:                                               ; preds = %48, %6
  %20 = load i64, i64* %15, align 8
  %21 = load i64, i64* %16, align 8
  %22 = load i64, i64* @BRAIN_LINK_CHUNK_SIZE, align 8
  %23 = sub nsw i64 %21, %22
  %24 = icmp slt i64 %20, %23
  br i1 %24, label %25, label %52

25:                                               ; preds = %19
  %26 = load i32, i32* %8, align 4
  %27 = load i8*, i8** %14, align 8
  %28 = load i64, i64* %15, align 8
  %29 = getelementptr inbounds i8, i8* %27, i64 %28
  %30 = load i64, i64* @BRAIN_LINK_CHUNK_SIZE, align 8
  %31 = load i32, i32* %11, align 4
  %32 = load i32*, i32** %12, align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %34 = call i32 @brain_recv_all(i32 %26, i8* %29, i64 %30, i32 %31, i32* %32, %struct.TYPE_4__* %33)
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %25
  store i32 0, i32* %7, align 4
  br label %77

37:                                               ; preds = %25
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %39 = icmp ne %struct.TYPE_4__* %38, null
  br i1 %39, label %40, label %47

40:                                               ; preds = %37
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  store i32 0, i32* %7, align 4
  br label %77

46:                                               ; preds = %40
  br label %47

47:                                               ; preds = %46, %37
  br label %48

48:                                               ; preds = %47
  %49 = load i64, i64* @BRAIN_LINK_CHUNK_SIZE, align 8
  %50 = load i64, i64* %15, align 8
  %51 = add nsw i64 %50, %49
  store i64 %51, i64* %15, align 8
  br label %19

52:                                               ; preds = %19
  %53 = load i32, i32* %8, align 4
  %54 = load i8*, i8** %14, align 8
  %55 = load i64, i64* %15, align 8
  %56 = getelementptr inbounds i8, i8* %54, i64 %55
  %57 = load i64, i64* %16, align 8
  %58 = load i64, i64* %15, align 8
  %59 = sub nsw i64 %57, %58
  %60 = load i32, i32* %11, align 4
  %61 = load i32*, i32** %12, align 8
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %63 = call i32 @brain_recv_all(i32 %53, i8* %56, i64 %59, i32 %60, i32* %61, %struct.TYPE_4__* %62)
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %52
  store i32 0, i32* %7, align 4
  br label %77

66:                                               ; preds = %52
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %68 = icmp ne %struct.TYPE_4__* %67, null
  br i1 %68, label %69, label %76

69:                                               ; preds = %66
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %69
  store i32 0, i32* %7, align 4
  br label %77

75:                                               ; preds = %69
  br label %76

76:                                               ; preds = %75, %66
  store i32 1, i32* %7, align 4
  br label %77

77:                                               ; preds = %76, %74, %65, %45, %36
  %78 = load i32, i32* %7, align 4
  ret i32 %78
}

declare dso_local i32 @brain_recv_all(i32, i8*, i64, i32, i32*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
