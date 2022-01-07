; ModuleID = '/home/carl/AnghaBench/kphp-kdb/money/extr_money-import-dump.c_start_binlog.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/money/extr_money-import-dump.c_start_binlog.c"
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
define dso_local void @start_binlog(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.lev_start*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load i8*, i8** %4, align 8
  %12 = call i32 @strlen(i8* %11)
  %13 = add nsw i32 %12, 1
  br label %15

14:                                               ; preds = %2
  br label %15

15:                                               ; preds = %14, %10
  %16 = phi i32 [ %13, %10 ], [ 0, %14 ]
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = add nsw i32 %17, 3
  %19 = and i32 %18, -4
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %23

23:                                               ; preds = %22, %15
  %24 = load i64, i64* @binlog_existed, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %89

26:                                               ; preds = %23
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ST, align 8
  %28 = icmp ne %struct.TYPE_3__* %27, null
  br i1 %28, label %29, label %57

29:                                               ; preds = %26
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ST, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %3, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %53

35:                                               ; preds = %29
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ST, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @split_mod, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %53

41:                                               ; preds = %35
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ST, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @split_min, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %41
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ST, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @split_max, align 8
  %52 = icmp eq i64 %50, %51
  br label %53

53:                                               ; preds = %47, %41, %35, %29
  %54 = phi i1 [ false, %41 ], [ false, %35 ], [ false, %29 ], [ %52, %47 ]
  %55 = zext i1 %54 to i32
  %56 = call i32 @assert(i32 %55)
  br label %57

57:                                               ; preds = %53, %26
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** @KHDR, align 8
  %59 = icmp ne %struct.TYPE_4__* %58, null
  br i1 %59, label %60, label %88

60:                                               ; preds = %57
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** @KHDR, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %3, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %84

66:                                               ; preds = %60
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** @KHDR, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @split_mod, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %84

72:                                               ; preds = %66
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** @KHDR, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @split_min, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %84

78:                                               ; preds = %72
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** @KHDR, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @split_max, align 8
  %83 = icmp eq i64 %81, %82
  br label %84

84:                                               ; preds = %78, %72, %66, %60
  %85 = phi i1 [ false, %72 ], [ false, %66 ], [ false, %60 ], [ %83, %78 ]
  %86 = zext i1 %85 to i32
  %87 = call i32 @assert(i32 %86)
  br label %88

88:                                               ; preds = %84, %57
  br label %126

89:                                               ; preds = %23
  %90 = load i32, i32* %3, align 4
  %91 = load i8*, i8** %4, align 8
  %92 = call i32 @create_binlog_headers0(i32 %90, i8* %91)
  %93 = load i32, i32* %6, align 4
  %94 = sext i32 %93 to i64
  %95 = add i64 44, %94
  %96 = trunc i64 %95 to i32
  %97 = call %struct.lev_start* @write_alloc(i32 %96)
  store %struct.lev_start* %97, %struct.lev_start** %7, align 8
  %98 = load i32, i32* @LEV_START, align 4
  %99 = load %struct.lev_start*, %struct.lev_start** %7, align 8
  %100 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %99, i32 0, i32 6
  store i32 %98, i32* %100, align 8
  %101 = load i32, i32* %3, align 4
  %102 = load %struct.lev_start*, %struct.lev_start** %7, align 8
  %103 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 8
  %104 = load i32, i32* %6, align 4
  %105 = load %struct.lev_start*, %struct.lev_start** %7, align 8
  %106 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 4
  %107 = load i64, i64* @split_mod, align 8
  %108 = load %struct.lev_start*, %struct.lev_start** %7, align 8
  %109 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %108, i32 0, i32 5
  store i64 %107, i64* %109, align 8
  %110 = load i8*, i8** @split_rem, align 8
  %111 = load %struct.lev_start*, %struct.lev_start** %7, align 8
  %112 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %111, i32 0, i32 4
  store i8* %110, i8** %112, align 8
  %113 = load i8*, i8** @split_rem, align 8
  %114 = getelementptr i8, i8* %113, i64 1
  %115 = load %struct.lev_start*, %struct.lev_start** %7, align 8
  %116 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %115, i32 0, i32 3
  store i8* %114, i8** %116, align 8
  %117 = load i32, i32* %5, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %126

119:                                              ; preds = %89
  %120 = load %struct.lev_start*, %struct.lev_start** %7, align 8
  %121 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = load i8*, i8** %4, align 8
  %124 = load i32, i32* %5, align 4
  %125 = call i32 @memcpy(i32 %122, i8* %123, i32 %124)
  br label %126

126:                                              ; preds = %88, %119, %89
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @create_binlog_headers0(i32, i8*) #1

declare dso_local %struct.lev_start* @write_alloc(i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
