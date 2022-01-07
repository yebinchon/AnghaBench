; ModuleID = '/home/carl/AnghaBench/hashcat/src/extr_brain.c_brain_client_lookup.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/extr_brain.c_brain_client_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i64, i64, i64 }

@BRAIN_HASH_SIZE = common dso_local global i32 0, align 4
@BRAIN_OPERATION_HASH_LOOKUP = common dso_local global i8 0, align 1
@SEND_FLAGS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @brain_client_lookup(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32* %1, i32** %5, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %90

17:                                               ; preds = %2
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %90

24:                                               ; preds = %17
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 4
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to i8*
  store i8* %28, i8** %7, align 8
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to i8*
  store i8* %32, i8** %8, align 8
  store i32 0, i32* %9, align 4
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @BRAIN_HASH_SIZE, align 4
  %37 = mul nsw i32 %35, %36
  store i32 %37, i32* %10, align 4
  %38 = load i8, i8* @BRAIN_OPERATION_HASH_LOOKUP, align 1
  store i8 %38, i8* %11, align 1
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @SEND_FLAGS, align 4
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %42 = load i32*, i32** %5, align 8
  %43 = call i32 (i32, ...) @brain_send(i32 %39, i8* %11, i64 1, i32 %40, %struct.TYPE_3__* %41, i32* %42)
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %90

46:                                               ; preds = %24
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @SEND_FLAGS, align 4
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %50 = load i32*, i32** %5, align 8
  %51 = call i32 (i32, ...) @brain_send(i32 %47, i32* %10, i64 4, i32 %48, %struct.TYPE_3__* %49, i32* %50)
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %46
  store i32 0, i32* %3, align 4
  br label %90

54:                                               ; preds = %46
  %55 = load i32, i32* %6, align 4
  %56 = load i8*, i8** %8, align 8
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* @SEND_FLAGS, align 4
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %60 = load i32*, i32** %5, align 8
  %61 = call i32 (i32, ...) @brain_send(i32 %55, i8* %56, i32 %57, i32 %58, %struct.TYPE_3__* %59, i32* %60)
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %54
  store i32 0, i32* %3, align 4
  br label %90

64:                                               ; preds = %54
  %65 = load i32, i32* %6, align 4
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %67 = load i32*, i32** %5, align 8
  %68 = call i32 (i32, ...) @brain_recv(i32 %65, i32* %9, i64 4, i32 0, %struct.TYPE_3__* %66, i32* %67)
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %64
  store i32 0, i32* %3, align 4
  br label %90

71:                                               ; preds = %64
  %72 = load i32, i32* %9, align 4
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = trunc i64 %75 to i32
  %77 = icmp sgt i32 %72, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %71
  store i32 0, i32* %3, align 4
  br label %90

79:                                               ; preds = %71
  %80 = load i32, i32* %6, align 4
  %81 = load i8*, i8** %7, align 8
  %82 = load i32, i32* %9, align 4
  %83 = sext i32 %82 to i64
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %85 = load i32*, i32** %5, align 8
  %86 = call i32 (i32, ...) @brain_recv(i32 %80, i8* %81, i64 %83, i32 0, %struct.TYPE_3__* %84, i32* %85)
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %79
  store i32 0, i32* %3, align 4
  br label %90

89:                                               ; preds = %79
  store i32 1, i32* %3, align 4
  br label %90

90:                                               ; preds = %89, %88, %78, %70, %63, %53, %45, %23, %16
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i32 @brain_send(i32, ...) #1

declare dso_local i32 @brain_recv(i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
