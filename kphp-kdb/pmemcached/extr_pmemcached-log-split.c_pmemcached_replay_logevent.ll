; ModuleID = '/home/carl/AnghaBench/kphp-kdb/pmemcached/extr_pmemcached-log-split.c_pmemcached_replay_logevent.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/pmemcached/extr_pmemcached-log-split.c_pmemcached_replay_logevent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_generic = type { i8*, i8*, i32, i64 }

@pmemcached_replay_logevent.type_ok = internal global i32 -1, align 4
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
define dso_local i32 @pmemcached_replay_logevent(%struct.lev_generic* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lev_generic*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.lev_generic*, align 8
  store %struct.lev_generic* %0, %struct.lev_generic** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp slt i32 %9, 4
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 -2, i32* %3, align 4
  br label %108

12:                                               ; preds = %2
  %13 = load %struct.lev_generic*, %struct.lev_generic** %4, align 8
  %14 = bitcast %struct.lev_generic* %13 to i32*
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.lev_generic*, %struct.lev_generic** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @get_logrec_size(i32 %16, %struct.lev_generic* %17, i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp sgt i32 %20, %21
  br i1 %22, label %26, label %23

23:                                               ; preds = %12
  %24 = load i32, i32* %7, align 4
  %25 = icmp eq i32 %24, -2
  br i1 %25, label %26, label %27

26:                                               ; preds = %23, %12
  store i32 -2, i32* %3, align 4
  br label %108

27:                                               ; preds = %23
  %28 = load i32, i32* %7, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %27
  %31 = load i32, i32* @stderr, align 4
  %32 = load i32, i32* %7, align 4
  %33 = call i32 (...) @log_cur_pos()
  %34 = load i64, i64* @wr_bytes, align 8
  %35 = load i64, i64* @targ_orig_size, align 8
  %36 = add nsw i64 %34, %35
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @pmemcached_replay_logevent.type_ok, align 4
  %39 = call i32 (i32, i8*, ...) @fprintf(i32 %31, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %33, i64 %36, i32 %37, i32 %38)
  %40 = load i32, i32* %7, align 4
  store i32 %40, i32* %3, align 4
  br label %108

41:                                               ; preds = %27
  %42 = load i32, i32* @targ_existed, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %54, label %44

44:                                               ; preds = %41
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @LEV_START, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %44
  %49 = load i64, i64* @jump_log_pos, align 8
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load i32, i32* @stderr, align 4
  %53 = call i32 (i32, i8*, ...) @fprintf(i32 %52, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %108

54:                                               ; preds = %48, %44, %41
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @rd_bytes, align 4
  %57 = add nsw i32 %56, %55
  store i32 %57, i32* @rd_bytes, align 4
  %58 = load i32, i32* @rd_rec, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* @rd_rec, align 4
  %60 = load i32, i32* %6, align 4
  store i32 %60, i32* @pmemcached_replay_logevent.type_ok, align 4
  %61 = load i32, i32* %7, align 4
  %62 = add nsw i32 %61, 3
  %63 = and i32 %62, -4
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %6, align 4
  %65 = load %struct.lev_generic*, %struct.lev_generic** %4, align 8
  %66 = call i64 @want_write(i32 %64, %struct.lev_generic* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %106

68:                                               ; preds = %54
  %69 = load i64, i64* getelementptr inbounds (%struct.lev_generic, %struct.lev_generic* @LogTs, i32 0, i32 3), align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %68
  %72 = call %struct.lev_generic* @write_alloc(i32 8)
  %73 = call i32 @memcpy(%struct.lev_generic* %72, %struct.lev_generic* @LogTs, i32 8)
  %74 = load i64, i64* @wr_bytes, align 8
  %75 = add nsw i64 %74, 8
  store i64 %75, i64* @wr_bytes, align 8
  %76 = load i32, i32* @wr_rec, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* @wr_rec, align 4
  store i64 0, i64* getelementptr inbounds (%struct.lev_generic, %struct.lev_generic* @LogTs, i32 0, i32 3), align 8
  br label %78

78:                                               ; preds = %71, %68
  %79 = load i32, i32* %7, align 4
  %80 = call %struct.lev_generic* @write_alloc(i32 %79)
  store %struct.lev_generic* %80, %struct.lev_generic** %8, align 8
  %81 = load %struct.lev_generic*, %struct.lev_generic** %8, align 8
  %82 = load %struct.lev_generic*, %struct.lev_generic** %4, align 8
  %83 = load i32, i32* %7, align 4
  %84 = call i32 @memcpy(%struct.lev_generic* %81, %struct.lev_generic* %82, i32 %83)
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* @LEV_START, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %99

88:                                               ; preds = %78
  %89 = load i32, i32* @copy_mod, align 4
  %90 = load %struct.lev_generic*, %struct.lev_generic** %8, align 8
  %91 = getelementptr inbounds %struct.lev_generic, %struct.lev_generic* %90, i32 0, i32 2
  store i32 %89, i32* %91, align 8
  %92 = load i8*, i8** @copy_rem, align 8
  %93 = load %struct.lev_generic*, %struct.lev_generic** %8, align 8
  %94 = getelementptr inbounds %struct.lev_generic, %struct.lev_generic* %93, i32 0, i32 1
  store i8* %92, i8** %94, align 8
  %95 = load i8*, i8** @copy_rem, align 8
  %96 = getelementptr i8, i8* %95, i64 1
  %97 = load %struct.lev_generic*, %struct.lev_generic** %8, align 8
  %98 = getelementptr inbounds %struct.lev_generic, %struct.lev_generic* %97, i32 0, i32 0
  store i8* %96, i8** %98, align 8
  br label %99

99:                                               ; preds = %88, %78
  %100 = load i32, i32* %7, align 4
  %101 = sext i32 %100 to i64
  %102 = load i64, i64* @wr_bytes, align 8
  %103 = add nsw i64 %102, %101
  store i64 %103, i64* @wr_bytes, align 8
  %104 = load i32, i32* @wr_rec, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* @wr_rec, align 4
  br label %106

106:                                              ; preds = %99, %54
  %107 = load i32, i32* %7, align 4
  store i32 %107, i32* %3, align 4
  br label %108

108:                                              ; preds = %106, %51, %30, %26, %11
  %109 = load i32, i32* %3, align 4
  ret i32 %109
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
