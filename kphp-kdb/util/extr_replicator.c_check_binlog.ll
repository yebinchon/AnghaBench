; ModuleID = '/home/carl/AnghaBench/kphp-kdb/util/extr_replicator.c_check_binlog.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/util/extr_replicator.c_check_binlog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.related_binlog = type { i8*, i32, i32, i64, %struct.TYPE_4__*, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i8* }
%struct.TYPE_3__ = type { i64, i8* }

@hostname_len = common dso_local global i64 0, align 8
@hostname = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"local binlog path %s for binlog %s is invalid, ignoring entry\0A\00", align 1
@workers = common dso_local global i64 0, align 8
@sigrtmax_cnt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [69 x i8] c"error: cannot open kfs replica %s for binlog tag %s, ignoring entry\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @check_binlog(%struct.related_binlog* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.related_binlog*, align 8
  %4 = alloca i8*, align 8
  store %struct.related_binlog* %0, %struct.related_binlog** %3, align 8
  %5 = load %struct.related_binlog*, %struct.related_binlog** %3, align 8
  %6 = icmp ne %struct.related_binlog* %5, null
  br i1 %6, label %7, label %41

7:                                                ; preds = %1
  %8 = load %struct.related_binlog*, %struct.related_binlog** %3, align 8
  %9 = getelementptr inbounds %struct.related_binlog, %struct.related_binlog* %8, i32 0, i32 7
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = icmp ne %struct.TYPE_3__* %10, null
  br i1 %11, label %12, label %41

12:                                               ; preds = %7
  %13 = load %struct.related_binlog*, %struct.related_binlog** %3, align 8
  %14 = getelementptr inbounds %struct.related_binlog, %struct.related_binlog* %13, i32 0, i32 7
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @hostname_len, align 8
  %19 = icmp ugt i64 %17, %18
  br i1 %19, label %20, label %41

20:                                               ; preds = %12
  %21 = load %struct.related_binlog*, %struct.related_binlog** %3, align 8
  %22 = getelementptr inbounds %struct.related_binlog, %struct.related_binlog* %21, i32 0, i32 7
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i8*, i8** %24, align 8
  %26 = load i32, i32* @hostname, align 4
  %27 = load i64, i64* @hostname_len, align 8
  %28 = call i32 @memcmp(i8* %25, i32 %26, i64 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %41, label %30

30:                                               ; preds = %20
  %31 = load %struct.related_binlog*, %struct.related_binlog** %3, align 8
  %32 = getelementptr inbounds %struct.related_binlog, %struct.related_binlog* %31, i32 0, i32 7
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  %36 = load i64, i64* @hostname_len, align 8
  %37 = getelementptr inbounds i8, i8* %35, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 58
  br label %41

41:                                               ; preds = %30, %20, %12, %7, %1
  %42 = phi i1 [ false, %20 ], [ false, %12 ], [ false, %7 ], [ false, %1 ], [ %40, %30 ]
  %43 = zext i1 %42 to i32
  %44 = call i32 @assert(i32 %43)
  %45 = load %struct.related_binlog*, %struct.related_binlog** %3, align 8
  %46 = getelementptr inbounds %struct.related_binlog, %struct.related_binlog* %45, i32 0, i32 7
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load i8*, i8** %48, align 8
  %50 = load i64, i64* @hostname_len, align 8
  %51 = getelementptr inbounds i8, i8* %49, i64 %50
  %52 = getelementptr inbounds i8, i8* %51, i64 1
  %53 = load %struct.related_binlog*, %struct.related_binlog** %3, align 8
  %54 = getelementptr inbounds %struct.related_binlog, %struct.related_binlog* %53, i32 0, i32 0
  store i8* %52, i8** %54, align 8
  store i8* %52, i8** %4, align 8
  %55 = load %struct.related_binlog*, %struct.related_binlog** %3, align 8
  %56 = getelementptr inbounds %struct.related_binlog, %struct.related_binlog* %55, i32 0, i32 4
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.related_binlog*, %struct.related_binlog** %3, align 8
  %61 = getelementptr inbounds %struct.related_binlog, %struct.related_binlog* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 8
  %62 = load i8*, i8** %4, align 8
  %63 = call i32 @valid_binlog_path(i8* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %74, label %65

65:                                               ; preds = %41
  %66 = load i32, i32* @stderr, align 4
  %67 = load i8*, i8** %4, align 8
  %68 = load %struct.related_binlog*, %struct.related_binlog** %3, align 8
  %69 = getelementptr inbounds %struct.related_binlog, %struct.related_binlog* %68, i32 0, i32 4
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 @fprintf(i32 %66, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i8* %67, i8* %72)
  store i32 -1, i32* %2, align 4
  br label %113

74:                                               ; preds = %41
  %75 = load i64, i64* @workers, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %74
  store i32 -1, i32* %2, align 4
  br label %113

78:                                               ; preds = %74
  %79 = load i8*, i8** %4, align 8
  %80 = load %struct.related_binlog*, %struct.related_binlog** %3, align 8
  %81 = getelementptr inbounds %struct.related_binlog, %struct.related_binlog* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = and i32 %82, 4
  %84 = icmp ne i32 %83, 0
  %85 = zext i1 %84 to i64
  %86 = select i1 %84, i32 0, i32 1
  %87 = call i32 @open_replica(i8* %79, i32 %86)
  %88 = load %struct.related_binlog*, %struct.related_binlog** %3, align 8
  %89 = getelementptr inbounds %struct.related_binlog, %struct.related_binlog* %88, i32 0, i32 5
  store i32 %87, i32* %89, align 8
  %90 = load i32, i32* @sigrtmax_cnt, align 4
  %91 = load %struct.related_binlog*, %struct.related_binlog** %3, align 8
  %92 = getelementptr inbounds %struct.related_binlog, %struct.related_binlog* %91, i32 0, i32 6
  store i32 %90, i32* %92, align 4
  %93 = load %struct.related_binlog*, %struct.related_binlog** %3, align 8
  %94 = getelementptr inbounds %struct.related_binlog, %struct.related_binlog* %93, i32 0, i32 5
  %95 = load i32, i32* %94, align 8
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %106, label %97

97:                                               ; preds = %78
  %98 = load i32, i32* @stderr, align 4
  %99 = load i8*, i8** %4, align 8
  %100 = load %struct.related_binlog*, %struct.related_binlog** %3, align 8
  %101 = getelementptr inbounds %struct.related_binlog, %struct.related_binlog* %100, i32 0, i32 4
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 1
  %104 = load i8*, i8** %103, align 8
  %105 = call i32 @fprintf(i32 %98, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0), i8* %99, i8* %104)
  store i32 -1, i32* %2, align 4
  br label %113

106:                                              ; preds = %78
  %107 = load %struct.related_binlog*, %struct.related_binlog** %3, align 8
  %108 = getelementptr inbounds %struct.related_binlog, %struct.related_binlog* %107, i32 0, i32 2
  store i32 -1, i32* %108, align 4
  %109 = load %struct.related_binlog*, %struct.related_binlog** %3, align 8
  %110 = getelementptr inbounds %struct.related_binlog, %struct.related_binlog* %109, i32 0, i32 3
  store i64 0, i64* %110, align 8
  %111 = load %struct.related_binlog*, %struct.related_binlog** %3, align 8
  %112 = call i32 @load_binlog_data(%struct.related_binlog* %111)
  store i32 %112, i32* %2, align 4
  br label %113

113:                                              ; preds = %106, %97, %77, %65
  %114 = load i32, i32* %2, align 4
  ret i32 %114
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memcmp(i8*, i32, i64) #1

declare dso_local i32 @valid_binlog_path(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*) #1

declare dso_local i32 @open_replica(i8*, i32) #1

declare dso_local i32 @load_binlog_data(%struct.related_binlog*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
