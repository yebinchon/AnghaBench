; ModuleID = '/home/carl/AnghaBench/kphp-kdb/text/extr_text-import-dump.c_start_binlog.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/text/extr_text-import-dump.c_start_binlog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i64, i64 }
%struct.TYPE_4__ = type { i32, i64, i64, i64 }
%struct.lev_start = type { i32, i32, i32, i8*, i8*, i64, i32 }

@binlog_existed = common dso_local global i64 0, align 8
@ST = common dso_local global %struct.TYPE_3__* null, align 8
@split_mod = common dso_local global i64 0, align 8
@split_min = common dso_local global i64 0, align 8
@split_max = common dso_local global i64 0, align 8
@KHDR = common dso_local global %struct.TYPE_4__* null, align 8
@LEV_START = common dso_local global i32 0, align 4
@split_rem = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @start_binlog(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.lev_start*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  %14 = add nsw i32 %13, 1
  br label %16

15:                                               ; preds = %3
  br label %16

16:                                               ; preds = %15, %12
  %17 = phi i32 [ %14, %12 ], [ 0, %15 ]
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = add nsw i32 %18, 3
  %20 = and i32 %19, -4
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %24

24:                                               ; preds = %23, %16
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %24
  %28 = load i8*, i8** %5, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %28, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = icmp ne i8 %32, 0
  %34 = xor i1 %33, true
  br label %35

35:                                               ; preds = %27, %24
  %36 = phi i1 [ true, %24 ], [ %34, %27 ]
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert(i32 %37)
  %39 = load i64, i64* @binlog_existed, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %104

41:                                               ; preds = %35
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ST, align 8
  %43 = icmp ne %struct.TYPE_3__* %42, null
  br i1 %43, label %44, label %72

44:                                               ; preds = %41
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ST, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %4, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %68

50:                                               ; preds = %44
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ST, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @split_mod, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %68

56:                                               ; preds = %50
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ST, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @split_min, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %56
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ST, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @split_max, align 8
  %67 = icmp eq i64 %65, %66
  br label %68

68:                                               ; preds = %62, %56, %50, %44
  %69 = phi i1 [ false, %56 ], [ false, %50 ], [ false, %44 ], [ %67, %62 ]
  %70 = zext i1 %69 to i32
  %71 = call i32 @assert(i32 %70)
  br label %72

72:                                               ; preds = %68, %41
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** @KHDR, align 8
  %74 = icmp ne %struct.TYPE_4__* %73, null
  br i1 %74, label %75, label %103

75:                                               ; preds = %72
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** @KHDR, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* %4, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %99

81:                                               ; preds = %75
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** @KHDR, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @split_mod, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %99

87:                                               ; preds = %81
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** @KHDR, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @split_min, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %99

93:                                               ; preds = %87
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** @KHDR, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 3
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @split_max, align 8
  %98 = icmp eq i64 %96, %97
  br label %99

99:                                               ; preds = %93, %87, %81, %75
  %100 = phi i1 [ false, %87 ], [ false, %81 ], [ false, %75 ], [ %98, %93 ]
  %101 = zext i1 %100 to i32
  %102 = call i32 @assert(i32 %101)
  br label %103

103:                                              ; preds = %99, %72
  br label %142

104:                                              ; preds = %35
  %105 = load i32, i32* %4, align 4
  %106 = load i8*, i8** %5, align 8
  %107 = load i32, i32* %6, align 4
  %108 = call i32 @create_binlog_headers0(i32 %105, i8* %106, i32 %107)
  %109 = load i32, i32* %8, align 4
  %110 = sext i32 %109 to i64
  %111 = add i64 44, %110
  %112 = trunc i64 %111 to i32
  %113 = call %struct.lev_start* @write_alloc(i32 %112)
  store %struct.lev_start* %113, %struct.lev_start** %9, align 8
  %114 = load i32, i32* @LEV_START, align 4
  %115 = load %struct.lev_start*, %struct.lev_start** %9, align 8
  %116 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %115, i32 0, i32 6
  store i32 %114, i32* %116, align 8
  %117 = load i32, i32* %4, align 4
  %118 = load %struct.lev_start*, %struct.lev_start** %9, align 8
  %119 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %118, i32 0, i32 0
  store i32 %117, i32* %119, align 8
  %120 = load i32, i32* %8, align 4
  %121 = load %struct.lev_start*, %struct.lev_start** %9, align 8
  %122 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %121, i32 0, i32 1
  store i32 %120, i32* %122, align 4
  %123 = load i64, i64* @split_mod, align 8
  %124 = load %struct.lev_start*, %struct.lev_start** %9, align 8
  %125 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %124, i32 0, i32 5
  store i64 %123, i64* %125, align 8
  %126 = load i8*, i8** @split_rem, align 8
  %127 = load %struct.lev_start*, %struct.lev_start** %9, align 8
  %128 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %127, i32 0, i32 4
  store i8* %126, i8** %128, align 8
  %129 = load i8*, i8** @split_rem, align 8
  %130 = getelementptr i8, i8* %129, i64 1
  %131 = load %struct.lev_start*, %struct.lev_start** %9, align 8
  %132 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %131, i32 0, i32 3
  store i8* %130, i8** %132, align 8
  %133 = load i32, i32* %7, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %142

135:                                              ; preds = %104
  %136 = load %struct.lev_start*, %struct.lev_start** %9, align 8
  %137 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = load i8*, i8** %5, align 8
  %140 = load i32, i32* %7, align 4
  %141 = call i32 @memcpy(i32 %138, i8* %139, i32 %140)
  br label %142

142:                                              ; preds = %103, %135, %104
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @create_binlog_headers0(i32, i8*, i32) #1

declare dso_local %struct.lev_start* @write_alloc(i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
