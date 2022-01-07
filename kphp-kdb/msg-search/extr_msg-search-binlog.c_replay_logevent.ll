; ModuleID = '/home/carl/AnghaBench/kphp-kdb/msg-search/extr_msg-search-binlog.c_replay_logevent.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/msg-search/extr_msg-search-binlog.c_replay_logevent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.log_event = type { i32, i32, i32 }

@LE_NEWMSG_MAGIC = common dso_local global i32 0, align 4
@LE_NEWMSG_MAGIC_MAX = common dso_local global i32 0, align 4
@log_scan_mode = common dso_local global i32 0, align 4
@log_first_ts = common dso_local global i32 0, align 4
@log_read_until = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"time goes back from %d to %d in log file\0A\00", align 1
@log_time_cutoff = common dso_local global i32 0, align 4
@log_pos = common dso_local global i32 0, align 4
@log_cutoff_pos = common dso_local global i64 0, align 8
@verbosity = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [84 x i8] c"reached timestamp %d above cutoff %d at binlog position %lld, entering scan mode 1\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"unknown magic in log file: %08x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @replay_logevent(%struct.log_event* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.log_event*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.log_event* %0, %struct.log_event** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.log_event*, %struct.log_event** %4, align 8
  %9 = getelementptr inbounds %struct.log_event, %struct.log_event* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @LE_NEWMSG_MAGIC, align 4
  %12 = sub i32 %10, %11
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %13, 4
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 -2, i32* %3, align 4
  br label %161

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @LE_NEWMSG_MAGIC_MAX, align 4
  %19 = load i32, i32* @LE_NEWMSG_MAGIC, align 4
  %20 = sub i32 %18, %19
  %21 = icmp ult i32 %17, %20
  br i1 %21, label %22, label %54

22:                                               ; preds = %16
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %6, align 4
  %25 = mul nsw i32 %24, 8
  %26 = add nsw i32 %25, 12
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store i32 -1, i32* %3, align 4
  br label %161

29:                                               ; preds = %22
  %30 = load i32, i32* @log_scan_mode, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %50, label %32

32:                                               ; preds = %29
  %33 = load %struct.log_event*, %struct.log_event** %4, align 8
  %34 = getelementptr inbounds %struct.log_event, %struct.log_event* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.log_event*, %struct.log_event** %4, align 8
  %37 = getelementptr inbounds %struct.log_event, %struct.log_event* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32* @dyn_alloc_new_msg(i32 %35, i32 %38, i32 %39)
  store i32* %40, i32** %7, align 8
  %41 = load i32*, i32** %7, align 8
  %42 = call i32 @assert(i32* %41)
  %43 = load i32*, i32** %7, align 8
  %44 = load %struct.log_event*, %struct.log_event** %4, align 8
  %45 = bitcast %struct.log_event* %44 to i8*
  %46 = getelementptr inbounds i8, i8* %45, i64 12
  %47 = load i32, i32* %6, align 4
  %48 = mul nsw i32 %47, 8
  %49 = call i32 @memcpy(i32* %43, i8* %46, i32 %48)
  br label %50

50:                                               ; preds = %32, %29
  %51 = load i32, i32* %6, align 4
  %52 = mul nsw i32 %51, 8
  %53 = add nsw i32 %52, 12
  store i32 %53, i32* %3, align 4
  br label %161

54:                                               ; preds = %16
  %55 = load %struct.log_event*, %struct.log_event** %4, align 8
  %56 = getelementptr inbounds %struct.log_event, %struct.log_event* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  switch i32 %57, label %155 [
    i32 130, label %58
    i32 132, label %59
    i32 128, label %76
    i32 131, label %89
    i32 129, label %102
  ]

58:                                               ; preds = %54
  store i32 4, i32* %3, align 4
  br label %161

59:                                               ; preds = %54
  %60 = load i32, i32* %5, align 4
  %61 = icmp slt i32 %60, 12
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  store i32 -2, i32* %3, align 4
  br label %161

63:                                               ; preds = %59
  %64 = load i32, i32* @log_scan_mode, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %75, label %66

66:                                               ; preds = %63
  %67 = load %struct.log_event*, %struct.log_event** %4, align 8
  %68 = getelementptr inbounds %struct.log_event, %struct.log_event* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @dyn_user_header(i32 %69, i32 1)
  %71 = load %struct.log_event*, %struct.log_event** %4, align 8
  %72 = getelementptr inbounds %struct.log_event, %struct.log_event* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @dyn_delete_msg(i32 %70, i32 %73)
  br label %75

75:                                               ; preds = %66, %63
  store i32 12, i32* %3, align 4
  br label %161

76:                                               ; preds = %54
  %77 = load i32, i32* %5, align 4
  %78 = icmp slt i32 %77, 12
  br i1 %78, label %79, label %80

79:                                               ; preds = %76
  store i32 -2, i32* %3, align 4
  br label %161

80:                                               ; preds = %76
  %81 = load %struct.log_event*, %struct.log_event** %4, align 8
  %82 = getelementptr inbounds %struct.log_event, %struct.log_event* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @dyn_user_header(i32 %83, i32 1)
  %85 = load %struct.log_event*, %struct.log_event** %4, align 8
  %86 = getelementptr inbounds %struct.log_event, %struct.log_event* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @dyn_undelete_msg(i32 %84, i32 %87)
  store i32 12, i32* %3, align 4
  br label %161

89:                                               ; preds = %54
  %90 = load i32, i32* %5, align 4
  %91 = icmp slt i32 %90, 12
  br i1 %91, label %92, label %93

92:                                               ; preds = %89
  store i32 -2, i32* %3, align 4
  br label %161

93:                                               ; preds = %89
  %94 = load %struct.log_event*, %struct.log_event** %4, align 8
  %95 = getelementptr inbounds %struct.log_event, %struct.log_event* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @dyn_user_header(i32 %96, i32 1)
  %98 = load %struct.log_event*, %struct.log_event** %4, align 8
  %99 = getelementptr inbounds %struct.log_event, %struct.log_event* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @dyn_delall_msg(i32 %97, i32 %100)
  store i32 12, i32* %3, align 4
  br label %161

102:                                              ; preds = %54
  %103 = load i32, i32* %5, align 4
  %104 = icmp slt i32 %103, 8
  br i1 %104, label %105, label %106

105:                                              ; preds = %102
  store i32 -2, i32* %3, align 4
  br label %161

106:                                              ; preds = %102
  %107 = load i32, i32* @log_first_ts, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %113, label %109

109:                                              ; preds = %106
  %110 = load %struct.log_event*, %struct.log_event** %4, align 8
  %111 = getelementptr inbounds %struct.log_event, %struct.log_event* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  store i32 %112, i32* @log_first_ts, align 4
  br label %113

113:                                              ; preds = %109, %106
  %114 = load i32, i32* @log_read_until, align 4
  %115 = load %struct.log_event*, %struct.log_event** %4, align 8
  %116 = getelementptr inbounds %struct.log_event, %struct.log_event* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = icmp sgt i32 %114, %117
  br i1 %118, label %119, label %126

119:                                              ; preds = %113
  %120 = load i32, i32* @stderr, align 4
  %121 = load i32, i32* @log_read_until, align 4
  %122 = load %struct.log_event*, %struct.log_event** %4, align 8
  %123 = getelementptr inbounds %struct.log_event, %struct.log_event* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %120, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %121, i32 %124)
  br label %126

126:                                              ; preds = %119, %113
  %127 = load %struct.log_event*, %struct.log_event** %4, align 8
  %128 = getelementptr inbounds %struct.log_event, %struct.log_event* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  store i32 %129, i32* @log_read_until, align 4
  %130 = load %struct.log_event*, %struct.log_event** %4, align 8
  %131 = getelementptr inbounds %struct.log_event, %struct.log_event* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @log_time_cutoff, align 4
  %134 = icmp sge i32 %132, %133
  br i1 %134, label %135, label %154

135:                                              ; preds = %126
  %136 = load i32, i32* @log_scan_mode, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %154, label %138

138:                                              ; preds = %135
  %139 = load i32, i32* @log_pos, align 4
  %140 = load i32, i32* %5, align 4
  %141 = sub nsw i32 %139, %140
  %142 = sext i32 %141 to i64
  store i64 %142, i64* @log_cutoff_pos, align 8
  store i32 1, i32* @log_scan_mode, align 4
  %143 = load i32, i32* @verbosity, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %153

145:                                              ; preds = %138
  %146 = load i32, i32* @stderr, align 4
  %147 = load %struct.log_event*, %struct.log_event** %4, align 8
  %148 = getelementptr inbounds %struct.log_event, %struct.log_event* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @log_time_cutoff, align 4
  %151 = load i64, i64* @log_cutoff_pos, align 8
  %152 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %146, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.1, i64 0, i64 0), i32 %149, i32 %150, i64 %151)
  br label %153

153:                                              ; preds = %145, %138
  br label %154

154:                                              ; preds = %153, %135, %126
  store i32 8, i32* %3, align 4
  br label %161

155:                                              ; preds = %54
  %156 = load i32, i32* @stderr, align 4
  %157 = load %struct.log_event*, %struct.log_event** %4, align 8
  %158 = getelementptr inbounds %struct.log_event, %struct.log_event* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %156, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %159)
  store i32 -1, i32* %3, align 4
  br label %161

161:                                              ; preds = %155, %154, %105, %93, %92, %80, %79, %75, %62, %58, %50, %28, %15
  %162 = load i32, i32* %3, align 4
  ret i32 %162
}

declare dso_local i32* @dyn_alloc_new_msg(i32, i32, i32) #1

declare dso_local i32 @assert(i32*) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @dyn_delete_msg(i32, i32) #1

declare dso_local i32 @dyn_user_header(i32, i32) #1

declare dso_local i32 @dyn_undelete_msg(i32, i32) #1

declare dso_local i32 @dyn_delall_msg(i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
