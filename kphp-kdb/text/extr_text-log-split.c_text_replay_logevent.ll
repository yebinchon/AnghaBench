; ModuleID = '/home/carl/AnghaBench/kphp-kdb/text/extr_text-log-split.c_text_replay_logevent.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/text/extr_text-log-split.c_text_replay_logevent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_generic = type { i8*, i8*, i32, i64 }
%struct.lev_add_message = type { i32 }

@text_replay_logevent.type_ok = internal global i32 -1, align 4
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
@text_len = common dso_local global i64 0, align 8
@Map = common dso_local global i64 0, align 8
@conv_rec = common dso_local global i32 0, align 4
@copy_mod = common dso_local global i32 0, align 4
@copy_rem = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @text_replay_logevent(%struct.lev_generic* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lev_generic*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.lev_generic*, align 8
  store %struct.lev_generic* %0, %struct.lev_generic** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %11, 4
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 -2, i32* %3, align 4
  br label %135

14:                                               ; preds = %2
  %15 = load %struct.lev_generic*, %struct.lev_generic** %4, align 8
  %16 = bitcast %struct.lev_generic* %15 to i32*
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.lev_generic*, %struct.lev_generic** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @get_logrec_size(i32 %18, %struct.lev_generic* %19, i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp sgt i32 %22, %23
  br i1 %24, label %28, label %25

25:                                               ; preds = %14
  %26 = load i32, i32* %7, align 4
  %27 = icmp eq i32 %26, -2
  br i1 %27, label %28, label %29

28:                                               ; preds = %25, %14
  store i32 -2, i32* %3, align 4
  br label %135

29:                                               ; preds = %25
  %30 = load i32, i32* %7, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %29
  %33 = load i32, i32* @stderr, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i32 (...) @log_cur_pos()
  %36 = load i64, i64* @wr_bytes, align 8
  %37 = load i64, i64* @targ_orig_size, align 8
  %38 = add nsw i64 %36, %37
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @text_replay_logevent.type_ok, align 4
  %41 = call i32 (i32, i8*, ...) @fprintf(i32 %33, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %35, i64 %38, i32 %39, i32 %40)
  %42 = load i32, i32* %7, align 4
  store i32 %42, i32* %3, align 4
  br label %135

43:                                               ; preds = %29
  %44 = load i32, i32* @targ_existed, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %56, label %46

46:                                               ; preds = %43
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @LEV_START, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %46
  %51 = load i64, i64* @jump_log_pos, align 8
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i32, i32* @stderr, align 4
  %55 = call i32 (i32, i8*, ...) @fprintf(i32 %54, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %135

56:                                               ; preds = %50, %46, %43
  %57 = load i32, i32* %7, align 4
  %58 = add nsw i32 %57, 3
  %59 = and i32 %58, -4
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* @rd_bytes, align 4
  %62 = add nsw i32 %61, %60
  store i32 %62, i32* @rd_bytes, align 4
  %63 = load i32, i32* @rd_rec, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* @rd_rec, align 4
  %65 = load i32, i32* %6, align 4
  store i32 %65, i32* @text_replay_logevent.type_ok, align 4
  %66 = load i32, i32* %6, align 4
  %67 = load %struct.lev_generic*, %struct.lev_generic** %4, align 8
  %68 = call i64 @want_write(i32 %66, %struct.lev_generic* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %133

70:                                               ; preds = %56
  %71 = load i64, i64* getelementptr inbounds (%struct.lev_generic, %struct.lev_generic* @LogTs, i32 0, i32 3), align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %70
  %74 = call %struct.lev_generic* @write_alloc(i32 8)
  %75 = call i32 @memcpy(%struct.lev_generic* %74, %struct.lev_generic* @LogTs, i32 8)
  %76 = load i64, i64* @wr_bytes, align 8
  %77 = add nsw i64 %76, 8
  store i64 %77, i64* @wr_bytes, align 8
  %78 = load i32, i32* @wr_rec, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* @wr_rec, align 4
  store i64 0, i64* getelementptr inbounds (%struct.lev_generic, %struct.lev_generic* @LogTs, i32 0, i32 3), align 8
  br label %80

80:                                               ; preds = %73, %70
  %81 = load i64, i64* @text_len, align 8
  %82 = icmp sge i64 %81, 0
  br i1 %82, label %83, label %105

83:                                               ; preds = %80
  %84 = load i64, i64* @Map, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %105

86:                                               ; preds = %83
  %87 = load %struct.lev_generic*, %struct.lev_generic** %4, align 8
  %88 = bitcast %struct.lev_generic* %87 to %struct.lev_add_message*
  %89 = load i32, i32* %7, align 4
  %90 = load i64, i64* @text_len, align 8
  %91 = call i32 @write_convert_record(%struct.lev_add_message* %88, i32 %89, i64 %90)
  store i32 %91, i32* %8, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %105

93:                                               ; preds = %86
  %94 = load i32, i32* %8, align 4
  %95 = add nsw i32 %94, 3
  %96 = and i32 %95, -4
  %97 = sext i32 %96 to i64
  %98 = load i64, i64* @wr_bytes, align 8
  %99 = add nsw i64 %98, %97
  store i64 %99, i64* @wr_bytes, align 8
  %100 = load i32, i32* @wr_rec, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* @wr_rec, align 4
  %102 = load i32, i32* @conv_rec, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* @conv_rec, align 4
  %104 = load i32, i32* %7, align 4
  store i32 %104, i32* %3, align 4
  br label %135

105:                                              ; preds = %86, %83, %80
  %106 = load i32, i32* %7, align 4
  %107 = call %struct.lev_generic* @write_alloc(i32 %106)
  store %struct.lev_generic* %107, %struct.lev_generic** %10, align 8
  %108 = load %struct.lev_generic*, %struct.lev_generic** %10, align 8
  %109 = load %struct.lev_generic*, %struct.lev_generic** %4, align 8
  %110 = load i32, i32* %7, align 4
  %111 = call i32 @memcpy(%struct.lev_generic* %108, %struct.lev_generic* %109, i32 %110)
  %112 = load i32, i32* %6, align 4
  %113 = load i32, i32* @LEV_START, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %126

115:                                              ; preds = %105
  %116 = load i32, i32* @copy_mod, align 4
  %117 = load %struct.lev_generic*, %struct.lev_generic** %10, align 8
  %118 = getelementptr inbounds %struct.lev_generic, %struct.lev_generic* %117, i32 0, i32 2
  store i32 %116, i32* %118, align 8
  %119 = load i8*, i8** @copy_rem, align 8
  %120 = load %struct.lev_generic*, %struct.lev_generic** %10, align 8
  %121 = getelementptr inbounds %struct.lev_generic, %struct.lev_generic* %120, i32 0, i32 1
  store i8* %119, i8** %121, align 8
  %122 = load i8*, i8** @copy_rem, align 8
  %123 = getelementptr i8, i8* %122, i64 1
  %124 = load %struct.lev_generic*, %struct.lev_generic** %10, align 8
  %125 = getelementptr inbounds %struct.lev_generic, %struct.lev_generic* %124, i32 0, i32 0
  store i8* %123, i8** %125, align 8
  br label %126

126:                                              ; preds = %115, %105
  %127 = load i32, i32* %9, align 4
  %128 = sext i32 %127 to i64
  %129 = load i64, i64* @wr_bytes, align 8
  %130 = add nsw i64 %129, %128
  store i64 %130, i64* @wr_bytes, align 8
  %131 = load i32, i32* @wr_rec, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* @wr_rec, align 4
  br label %133

133:                                              ; preds = %126, %56
  %134 = load i32, i32* %7, align 4
  store i32 %134, i32* %3, align 4
  br label %135

135:                                              ; preds = %133, %93, %53, %32, %28, %13
  %136 = load i32, i32* %3, align 4
  ret i32 %136
}

declare dso_local i32 @get_logrec_size(i32, %struct.lev_generic*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @log_cur_pos(...) #1

declare dso_local i64 @want_write(i32, %struct.lev_generic*) #1

declare dso_local i32 @memcpy(%struct.lev_generic*, %struct.lev_generic*, i32) #1

declare dso_local %struct.lev_generic* @write_alloc(i32) #1

declare dso_local i32 @write_convert_record(%struct.lev_add_message*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
