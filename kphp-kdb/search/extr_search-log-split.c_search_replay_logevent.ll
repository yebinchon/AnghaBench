; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-log-split.c_search_replay_logevent.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-log-split.c_search_replay_logevent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_generic = type { i8*, i8*, i32, i64 }

@search_replay_logevent.type_ok = internal global i32 -1, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [91 x i8] c"error %d reading binlog at position %lld, write position %lld, type %08x (prev type %08x)\0A\00", align 1
@wr_bytes = common dso_local global i64 0, align 8
@targ_orig_size = common dso_local global i64 0, align 8
@targ_existed = common dso_local global i32 0, align 4
@LEV_START = common dso_local global i32 0, align 4
@jump_log_pos = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"error: first record must be a LEV_START\0A\00", align 1
@rd_bytes = common dso_local global i32 0, align 4
@rd_rec = common dso_local global i32 0, align 4
@LogTs = common dso_local global %struct.lev_generic zeroinitializer, align 8
@wr_rec = common dso_local global i32 0, align 4
@copy_mod = common dso_local global i32 0, align 4
@copy_rem = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @search_replay_logevent(%struct.lev_generic* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lev_generic*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.lev_generic*, align 8
  store %struct.lev_generic* %0, %struct.lev_generic** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %10, 4
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 -2, i32* %3, align 4
  br label %109

13:                                               ; preds = %2
  %14 = load %struct.lev_generic*, %struct.lev_generic** %4, align 8
  %15 = bitcast %struct.lev_generic* %14 to i32*
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.lev_generic*, %struct.lev_generic** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @get_logrec_size(i32 %17, %struct.lev_generic* %18, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp sgt i32 %21, %22
  br i1 %23, label %27, label %24

24:                                               ; preds = %13
  %25 = load i32, i32* %7, align 4
  %26 = icmp eq i32 %25, -2
  br i1 %26, label %27, label %28

27:                                               ; preds = %24, %13
  store i32 -2, i32* %3, align 4
  br label %109

28:                                               ; preds = %24
  %29 = load i32, i32* %7, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %28
  %32 = load i32, i32* @stderr, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i32 (...) @log_cur_pos()
  %35 = load i64, i64* @wr_bytes, align 8
  %36 = load i64, i64* @targ_orig_size, align 8
  %37 = add nsw i64 %35, %36
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @search_replay_logevent.type_ok, align 4
  %40 = call i32 (i32, i8*, ...) @fprintf(i32 %32, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %34, i64 %37, i32 %38, i32 %39)
  %41 = load i32, i32* %7, align 4
  store i32 %41, i32* %3, align 4
  br label %109

42:                                               ; preds = %28
  %43 = load i32, i32* @targ_existed, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %55, label %45

45:                                               ; preds = %42
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @LEV_START, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %45
  %50 = load i64, i64* @jump_log_pos, align 8
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load i32, i32* @stderr, align 4
  %54 = call i32 (i32, i8*, ...) @fprintf(i32 %53, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %109

55:                                               ; preds = %49, %45, %42
  %56 = load i32, i32* %7, align 4
  %57 = add nsw i32 %56, 3
  %58 = and i32 %57, -4
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* @rd_bytes, align 4
  %61 = add nsw i32 %60, %59
  store i32 %61, i32* @rd_bytes, align 4
  %62 = load i32, i32* @rd_rec, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* @rd_rec, align 4
  %64 = load i32, i32* %6, align 4
  store i32 %64, i32* @search_replay_logevent.type_ok, align 4
  %65 = load i32, i32* %6, align 4
  %66 = load %struct.lev_generic*, %struct.lev_generic** %4, align 8
  %67 = call i64 @want_write(i32 %65, %struct.lev_generic* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %107

69:                                               ; preds = %55
  %70 = load i64, i64* getelementptr inbounds (%struct.lev_generic, %struct.lev_generic* @LogTs, i32 0, i32 3), align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %69
  %73 = call %struct.lev_generic* @write_alloc(i32 8)
  %74 = call i32 @memcpy(%struct.lev_generic* %73, %struct.lev_generic* @LogTs, i32 8)
  %75 = load i64, i64* @wr_bytes, align 8
  %76 = add nsw i64 %75, 8
  store i64 %76, i64* @wr_bytes, align 8
  %77 = load i32, i32* @wr_rec, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* @wr_rec, align 4
  store i64 0, i64* getelementptr inbounds (%struct.lev_generic, %struct.lev_generic* @LogTs, i32 0, i32 3), align 8
  br label %79

79:                                               ; preds = %72, %69
  %80 = load i32, i32* %7, align 4
  %81 = call %struct.lev_generic* @write_alloc(i32 %80)
  store %struct.lev_generic* %81, %struct.lev_generic** %9, align 8
  %82 = load %struct.lev_generic*, %struct.lev_generic** %9, align 8
  %83 = load %struct.lev_generic*, %struct.lev_generic** %4, align 8
  %84 = load i32, i32* %7, align 4
  %85 = call i32 @memcpy(%struct.lev_generic* %82, %struct.lev_generic* %83, i32 %84)
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* @LEV_START, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %100

89:                                               ; preds = %79
  %90 = load i32, i32* @copy_mod, align 4
  %91 = load %struct.lev_generic*, %struct.lev_generic** %9, align 8
  %92 = getelementptr inbounds %struct.lev_generic, %struct.lev_generic* %91, i32 0, i32 2
  store i32 %90, i32* %92, align 8
  %93 = load i8*, i8** @copy_rem, align 8
  %94 = load %struct.lev_generic*, %struct.lev_generic** %9, align 8
  %95 = getelementptr inbounds %struct.lev_generic, %struct.lev_generic* %94, i32 0, i32 1
  store i8* %93, i8** %95, align 8
  %96 = load i8*, i8** @copy_rem, align 8
  %97 = getelementptr i8, i8* %96, i64 1
  %98 = load %struct.lev_generic*, %struct.lev_generic** %9, align 8
  %99 = getelementptr inbounds %struct.lev_generic, %struct.lev_generic* %98, i32 0, i32 0
  store i8* %97, i8** %99, align 8
  br label %100

100:                                              ; preds = %89, %79
  %101 = load i32, i32* %8, align 4
  %102 = sext i32 %101 to i64
  %103 = load i64, i64* @wr_bytes, align 8
  %104 = add nsw i64 %103, %102
  store i64 %104, i64* @wr_bytes, align 8
  %105 = load i32, i32* @wr_rec, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* @wr_rec, align 4
  br label %107

107:                                              ; preds = %100, %55
  %108 = load i32, i32* %7, align 4
  store i32 %108, i32* %3, align 4
  br label %109

109:                                              ; preds = %107, %52, %31, %27, %12
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local i32 @get_logrec_size(i32, %struct.lev_generic*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @log_cur_pos(...) #1

declare dso_local i64 @want_write(i32, %struct.lev_generic*) #1

declare dso_local i32 @memcpy(%struct.lev_generic*, %struct.lev_generic*, i32) #1

declare dso_local %struct.lev_generic* @write_alloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
