; ModuleID = '/home/carl/AnghaBench/h2o/t/00unit/lib/common/extr_........libcommonsocketevloop.c.h_write_core.c'
source_filename = "/home/carl/AnghaBench/h2o/t/00unit/lib/common/extr_........libcommonsocketevloop.c.h_write_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.iovec = type { i32 }

@IOV_MAX = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_3__**, i64*, i64*)* @write_core to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_core(i32 %0, %struct.TYPE_3__** %1, i64* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__**, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.TYPE_3__** %1, %struct.TYPE_3__*** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  %12 = load i64*, i64** %9, align 8
  store i64 0, i64* %12, align 8
  br label %13

13:                                               ; preds = %103, %4
  %14 = load i64*, i64** %8, align 8
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %104

17:                                               ; preds = %13
  %18 = load i32, i32* @IOV_MAX, align 4
  store i32 %18, i32* %10, align 4
  %19 = load i64*, i64** %8, align 8
  %20 = load i64, i64* %19, align 8
  %21 = load i32, i32* %10, align 4
  %22 = sext i32 %21 to i64
  %23 = icmp ult i64 %20, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %17
  %25 = load i64*, i64** %8, align 8
  %26 = load i64, i64* %25, align 8
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %10, align 4
  br label %28

28:                                               ; preds = %24, %17
  br label %29

29:                                               ; preds = %43, %28
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %7, align 8
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = bitcast %struct.TYPE_3__* %32 to %struct.iovec*
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @writev(i32 %30, %struct.iovec* %33, i32 %34)
  store i32 %35, i32* %11, align 4
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %37, label %41

37:                                               ; preds = %29
  %38 = load i64, i64* @errno, align 8
  %39 = load i64, i64* @EINTR, align 8
  %40 = icmp eq i64 %38, %39
  br label %41

41:                                               ; preds = %37, %29
  %42 = phi i1 [ false, %29 ], [ %40, %37 ]
  br i1 %42, label %43, label %44

43:                                               ; preds = %41
  br label %29

44:                                               ; preds = %41
  %45 = load i32, i32* %11, align 4
  %46 = icmp eq i32 %45, -1
  br i1 %46, label %47, label %53

47:                                               ; preds = %44
  %48 = load i64, i64* @errno, align 8
  %49 = load i64, i64* @EAGAIN, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  store i32 -1, i32* %5, align 4
  br label %105

52:                                               ; preds = %47
  br label %104

53:                                               ; preds = %44
  br label %54

54:                                               ; preds = %61, %53
  %55 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %7, align 8
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %11, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %76

61:                                               ; preds = %54
  %62 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %7, align 8
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %11, align 4
  %67 = sub nsw i32 %66, %65
  store i32 %67, i32* %11, align 4
  %68 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %7, align 8
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 1
  store %struct.TYPE_3__* %70, %struct.TYPE_3__** %68, align 8
  %71 = load i64*, i64** %8, align 8
  %72 = load i64, i64* %71, align 8
  %73 = add i64 %72, -1
  store i64 %73, i64* %71, align 8
  %74 = load i32, i32* %10, align 4
  %75 = add nsw i32 %74, -1
  store i32 %75, i32* %10, align 4
  br label %54

76:                                               ; preds = %54
  %77 = load i32, i32* %10, align 4
  %78 = icmp sgt i32 %77, 0
  %79 = zext i1 %78 to i32
  %80 = call i32 @assert(i32 %79)
  %81 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %7, align 8
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %11, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %99

87:                                               ; preds = %76
  %88 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %7, align 8
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 1
  store %struct.TYPE_3__* %90, %struct.TYPE_3__** %88, align 8
  %91 = load i64*, i64** %8, align 8
  %92 = load i64, i64* %91, align 8
  %93 = add i64 %92, -1
  store i64 %93, i64* %91, align 8
  %94 = load i32, i32* %10, align 4
  %95 = add nsw i32 %94, -1
  store i32 %95, i32* %10, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %87
  br label %104

98:                                               ; preds = %87
  br label %103

99:                                               ; preds = %76
  %100 = load i32, i32* %11, align 4
  %101 = sext i32 %100 to i64
  %102 = load i64*, i64** %9, align 8
  store i64 %101, i64* %102, align 8
  br label %104

103:                                              ; preds = %98
  br label %13

104:                                              ; preds = %99, %97, %52, %13
  store i32 0, i32* %5, align 4
  br label %105

105:                                              ; preds = %104, %51
  %106 = load i32, i32* %5, align 4
  ret i32 %106
}

declare dso_local i32 @writev(i32, %struct.iovec*, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
