; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-log-split.c_targ_replay_logevent.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-log-split.c_targ_replay_logevent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_generic = type { i32, i8*, i8*, i32, i64 }

@targ_replay_logevent.type_ok = internal global i32 -1, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [91 x i8] c"error %d reading binlog at position %lld, write position %lld, type %08x (prev type %08x)\0A\00", align 1
@wr_bytes = common dso_local global i64 0, align 8
@targ_orig_size = common dso_local global i64 0, align 8
@targ_existed = common dso_local global i32 0, align 4
@LEV_START = common dso_local global i32 0, align 4
@jump_log_pos = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"error: first record must be a LEV_START\0A\00", align 1
@immediate_exit = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [51 x i8] c"error: first record in a binlog must be LEV_START\0A\00", align 1
@rd_bytes = common dso_local global i32 0, align 4
@rd_rec = common dso_local global i32 0, align 4
@LogTs = common dso_local global %struct.lev_generic zeroinitializer, align 8
@wr_rec = common dso_local global i32 0, align 4
@copy_mod = common dso_local global i32 0, align 4
@copy_rem = common dso_local global i8* null, align 8
@LEV_TARG_VIEWS = common dso_local global i32 0, align 4
@wr_views_rec = common dso_local global i32 0, align 4
@LEV_TARG_STAT_LOAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @targ_replay_logevent(%struct.lev_generic* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lev_generic*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.lev_generic*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.lev_generic* %0, %struct.lev_generic** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %11, 4
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 -2, i32* %3, align 4
  br label %163

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
  br label %163

29:                                               ; preds = %25
  %30 = load i32, i32* %7, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %47

32:                                               ; preds = %29
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, -13
  br i1 %34, label %35, label %45

35:                                               ; preds = %32
  %36 = load i32, i32* @stderr, align 4
  %37 = load i32, i32* %7, align 4
  %38 = call i32 (...) @log_cur_pos()
  %39 = load i64, i64* @wr_bytes, align 8
  %40 = load i64, i64* @targ_orig_size, align 8
  %41 = add nsw i64 %39, %40
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @targ_replay_logevent.type_ok, align 4
  %44 = call i32 (i32, i8*, ...) @fprintf(i32 %36, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %38, i64 %41, i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %35, %32
  %46 = load i32, i32* %7, align 4
  store i32 %46, i32* %3, align 4
  br label %163

47:                                               ; preds = %29
  %48 = load i32, i32* @targ_existed, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %60, label %50

50:                                               ; preds = %47
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @LEV_START, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %50
  %55 = load i64, i64* @jump_log_pos, align 8
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load i32, i32* @stderr, align 4
  %59 = call i32 (i32, i8*, ...) @fprintf(i32 %58, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %163

60:                                               ; preds = %54, %50, %47
  %61 = load i64, i64* @immediate_exit, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %60
  %64 = load i32, i32* @stderr, align 4
  %65 = call i32 (i32, i8*, ...) @fprintf(i32 %64, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0))
  %66 = call i32 @exit(i32 1) #3
  unreachable

67:                                               ; preds = %60
  %68 = load i32, i32* %7, align 4
  %69 = add nsw i32 %68, 3
  %70 = and i32 %69, -4
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* @rd_bytes, align 4
  %73 = add nsw i32 %72, %71
  store i32 %73, i32* @rd_bytes, align 4
  %74 = load i32, i32* @rd_rec, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* @rd_rec, align 4
  %76 = load i32, i32* %6, align 4
  store i32 %76, i32* @targ_replay_logevent.type_ok, align 4
  %77 = load i32, i32* %6, align 4
  %78 = load %struct.lev_generic*, %struct.lev_generic** %4, align 8
  %79 = call i64 @want_write(i32 %77, %struct.lev_generic* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %161

81:                                               ; preds = %67
  %82 = load i64, i64* getelementptr inbounds (%struct.lev_generic, %struct.lev_generic* @LogTs, i32 0, i32 4), align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %81
  %85 = call %struct.lev_generic* @write_alloc(i32 8)
  %86 = call i32 @memcpy(%struct.lev_generic* %85, %struct.lev_generic* @LogTs, i32 8)
  %87 = load i64, i64* @wr_bytes, align 8
  %88 = add nsw i64 %87, 8
  store i64 %88, i64* @wr_bytes, align 8
  %89 = load i32, i32* @wr_rec, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* @wr_rec, align 4
  store i64 0, i64* getelementptr inbounds (%struct.lev_generic, %struct.lev_generic* @LogTs, i32 0, i32 4), align 8
  br label %91

91:                                               ; preds = %84, %81
  %92 = load i32, i32* %7, align 4
  %93 = call %struct.lev_generic* @write_alloc(i32 %92)
  store %struct.lev_generic* %93, %struct.lev_generic** %8, align 8
  %94 = load %struct.lev_generic*, %struct.lev_generic** %8, align 8
  %95 = load %struct.lev_generic*, %struct.lev_generic** %4, align 8
  %96 = load i32, i32* %7, align 4
  %97 = call i32 @memcpy(%struct.lev_generic* %94, %struct.lev_generic* %95, i32 %96)
  %98 = load i32, i32* %6, align 4
  %99 = load i32, i32* @LEV_START, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %112

101:                                              ; preds = %91
  %102 = load i32, i32* @copy_mod, align 4
  %103 = load %struct.lev_generic*, %struct.lev_generic** %8, align 8
  %104 = getelementptr inbounds %struct.lev_generic, %struct.lev_generic* %103, i32 0, i32 3
  store i32 %102, i32* %104, align 8
  %105 = load i8*, i8** @copy_rem, align 8
  %106 = load %struct.lev_generic*, %struct.lev_generic** %8, align 8
  %107 = getelementptr inbounds %struct.lev_generic, %struct.lev_generic* %106, i32 0, i32 2
  store i8* %105, i8** %107, align 8
  %108 = load i8*, i8** @copy_rem, align 8
  %109 = getelementptr i8, i8* %108, i64 1
  %110 = load %struct.lev_generic*, %struct.lev_generic** %8, align 8
  %111 = getelementptr inbounds %struct.lev_generic, %struct.lev_generic* %110, i32 0, i32 1
  store i8* %109, i8** %111, align 8
  br label %154

112:                                              ; preds = %91
  %113 = load i32, i32* %6, align 4
  %114 = load i32, i32* @LEV_TARG_VIEWS, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %126

116:                                              ; preds = %112
  %117 = load i32, i32* @wr_views_rec, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* @wr_views_rec, align 4
  %119 = load %struct.lev_generic*, %struct.lev_generic** %8, align 8
  %120 = getelementptr inbounds %struct.lev_generic, %struct.lev_generic* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = call i8* @split_int(i32 %121)
  %123 = ptrtoint i8* %122 to i32
  %124 = load %struct.lev_generic*, %struct.lev_generic** %8, align 8
  %125 = getelementptr inbounds %struct.lev_generic, %struct.lev_generic* %124, i32 0, i32 0
  store i32 %123, i32* %125, align 8
  br label %153

126:                                              ; preds = %112
  %127 = load i32, i32* %6, align 4
  %128 = load i32, i32* @LEV_TARG_STAT_LOAD, align 4
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %130, label %152

130:                                              ; preds = %126
  %131 = load %struct.lev_generic*, %struct.lev_generic** %8, align 8
  %132 = bitcast %struct.lev_generic* %131 to i32*
  store i32* %132, i32** %10, align 8
  store i32 2, i32* %9, align 4
  br label %133

133:                                              ; preds = %148, %130
  %134 = load i32, i32* %9, align 4
  %135 = icmp slt i32 %134, 7
  br i1 %135, label %136, label %151

136:                                              ; preds = %133
  %137 = load i32*, i32** %10, align 8
  %138 = load i32, i32* %9, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = call i8* @split_int(i32 %141)
  %143 = ptrtoint i8* %142 to i32
  %144 = load i32*, i32** %10, align 8
  %145 = load i32, i32* %9, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  store i32 %143, i32* %147, align 4
  br label %148

148:                                              ; preds = %136
  %149 = load i32, i32* %9, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %9, align 4
  br label %133

151:                                              ; preds = %133
  br label %152

152:                                              ; preds = %151, %126
  br label %153

153:                                              ; preds = %152, %116
  br label %154

154:                                              ; preds = %153, %101
  %155 = load i32, i32* %7, align 4
  %156 = sext i32 %155 to i64
  %157 = load i64, i64* @wr_bytes, align 8
  %158 = add nsw i64 %157, %156
  store i64 %158, i64* @wr_bytes, align 8
  %159 = load i32, i32* @wr_rec, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* @wr_rec, align 4
  br label %161

161:                                              ; preds = %154, %67
  %162 = load i32, i32* %7, align 4
  store i32 %162, i32* %3, align 4
  br label %163

163:                                              ; preds = %161, %57, %45, %28, %13
  %164 = load i32, i32* %3, align 4
  ret i32 %164
}

declare dso_local i32 @get_logrec_size(i32, %struct.lev_generic*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @log_cur_pos(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @want_write(i32, %struct.lev_generic*) #1

declare dso_local i32 @memcpy(%struct.lev_generic*, %struct.lev_generic*, i32) #1

declare dso_local %struct.lev_generic* @write_alloc(i32) #1

declare dso_local i8* @split_int(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
