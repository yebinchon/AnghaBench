; ModuleID = '/home/carl/AnghaBench/kphp-kdb/copyexec/extr_copyexec-data.c_transaction_replay_logevent.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/copyexec/extr_copyexec-data.c_transaction_replay_logevent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_generic = type { i32 }
%struct.lev_copyexec_aux_transaction_cmd_file = type { i32, i32 }
%struct.lev_copyexec_aux_transaction_cmd_exec = type { i32 }
%struct.lev_copyexec_aux_transaction_cmd_wait = type { i32 }
%struct.lev_copyexec_aux_transaction_cmd_kill = type { i32, i32 }
%struct.lev_copyexec_aux_transaction_cmd_result = type { i32 }

@.str = private unnamed_addr constant [57 x i8] c"transaction_replay_logevent (E->type = 0x%x, size = %d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @transaction_replay_logevent(%struct.lev_generic* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lev_generic*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.lev_generic* %0, %struct.lev_generic** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.lev_generic*, %struct.lev_generic** %4, align 8
  %8 = getelementptr inbounds %struct.lev_generic, %struct.lev_generic* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @vkprintf(i32 3, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %10)
  %12 = load %struct.lev_generic*, %struct.lev_generic** %4, align 8
  %13 = getelementptr inbounds %struct.lev_generic, %struct.lev_generic* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %168 [
    i32 131, label %15
    i32 134, label %44
    i32 133, label %68
    i32 132, label %92
    i32 128, label %116
    i32 135, label %128
    i32 130, label %140
    i32 129, label %156
  ]

15:                                               ; preds = %2
  store i32 8, i32* %6, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store i32 -2, i32* %3, align 4
  br label %169

20:                                               ; preds = %15
  %21 = load %struct.lev_generic*, %struct.lev_generic** %4, align 8
  %22 = bitcast %struct.lev_generic* %21 to %struct.lev_copyexec_aux_transaction_cmd_file*
  %23 = getelementptr inbounds %struct.lev_copyexec_aux_transaction_cmd_file, %struct.lev_copyexec_aux_transaction_cmd_file* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.lev_generic*, %struct.lev_generic** %4, align 8
  %26 = bitcast %struct.lev_generic* %25 to %struct.lev_copyexec_aux_transaction_cmd_file*
  %27 = getelementptr inbounds %struct.lev_copyexec_aux_transaction_cmd_file, %struct.lev_copyexec_aux_transaction_cmd_file* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %24, %28
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %30, %29
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %20
  store i32 -2, i32* %3, align 4
  br label %169

36:                                               ; preds = %20
  %37 = load %struct.lev_generic*, %struct.lev_generic** %4, align 8
  %38 = bitcast %struct.lev_generic* %37 to %struct.lev_copyexec_aux_transaction_cmd_file*
  %39 = call i32 @do_file(%struct.lev_copyexec_aux_transaction_cmd_file* %38)
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  store i32 -4, i32* %3, align 4
  br label %169

42:                                               ; preds = %36
  %43 = load i32, i32* %6, align 4
  store i32 %43, i32* %3, align 4
  br label %169

44:                                               ; preds = %2
  store i32 4, i32* %6, align 4
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  store i32 -2, i32* %3, align 4
  br label %169

49:                                               ; preds = %44
  %50 = load %struct.lev_generic*, %struct.lev_generic** %4, align 8
  %51 = bitcast %struct.lev_generic* %50 to %struct.lev_copyexec_aux_transaction_cmd_exec*
  %52 = getelementptr inbounds %struct.lev_copyexec_aux_transaction_cmd_exec, %struct.lev_copyexec_aux_transaction_cmd_exec* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %6, align 4
  %55 = add nsw i32 %54, %53
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %49
  store i32 -2, i32* %3, align 4
  br label %169

60:                                               ; preds = %49
  %61 = load %struct.lev_generic*, %struct.lev_generic** %4, align 8
  %62 = bitcast %struct.lev_generic* %61 to %struct.lev_copyexec_aux_transaction_cmd_exec*
  %63 = call i32 @do_exec(%struct.lev_copyexec_aux_transaction_cmd_exec* %62, i32 0, i32 0)
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  store i32 -5, i32* %3, align 4
  br label %169

66:                                               ; preds = %60
  %67 = load i32, i32* %6, align 4
  store i32 %67, i32* %3, align 4
  br label %169

68:                                               ; preds = %2
  store i32 4, i32* %6, align 4
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* %6, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  store i32 -2, i32* %3, align 4
  br label %169

73:                                               ; preds = %68
  %74 = load %struct.lev_generic*, %struct.lev_generic** %4, align 8
  %75 = bitcast %struct.lev_generic* %74 to %struct.lev_copyexec_aux_transaction_cmd_exec*
  %76 = getelementptr inbounds %struct.lev_copyexec_aux_transaction_cmd_exec, %struct.lev_copyexec_aux_transaction_cmd_exec* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %6, align 4
  %79 = add nsw i32 %78, %77
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* %6, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %73
  store i32 -2, i32* %3, align 4
  br label %169

84:                                               ; preds = %73
  %85 = load %struct.lev_generic*, %struct.lev_generic** %4, align 8
  %86 = bitcast %struct.lev_generic* %85 to %struct.lev_copyexec_aux_transaction_cmd_exec*
  %87 = call i32 @do_exec(%struct.lev_copyexec_aux_transaction_cmd_exec* %86, i32 1, i32 0)
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %84
  store i32 -6, i32* %3, align 4
  br label %169

90:                                               ; preds = %84
  %91 = load i32, i32* %6, align 4
  store i32 %91, i32* %3, align 4
  br label %169

92:                                               ; preds = %2
  store i32 4, i32* %6, align 4
  %93 = load i32, i32* %5, align 4
  %94 = load i32, i32* %6, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %92
  store i32 -2, i32* %3, align 4
  br label %169

97:                                               ; preds = %92
  %98 = load %struct.lev_generic*, %struct.lev_generic** %4, align 8
  %99 = bitcast %struct.lev_generic* %98 to %struct.lev_copyexec_aux_transaction_cmd_exec*
  %100 = getelementptr inbounds %struct.lev_copyexec_aux_transaction_cmd_exec, %struct.lev_copyexec_aux_transaction_cmd_exec* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %6, align 4
  %103 = add nsw i32 %102, %101
  store i32 %103, i32* %6, align 4
  %104 = load i32, i32* %5, align 4
  %105 = load i32, i32* %6, align 4
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %97
  store i32 -2, i32* %3, align 4
  br label %169

108:                                              ; preds = %97
  %109 = load %struct.lev_generic*, %struct.lev_generic** %4, align 8
  %110 = bitcast %struct.lev_generic* %109 to %struct.lev_copyexec_aux_transaction_cmd_exec*
  %111 = call i32 @do_exec(%struct.lev_copyexec_aux_transaction_cmd_exec* %110, i32 0, i32 1)
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %108
  store i32 -7, i32* %3, align 4
  br label %169

114:                                              ; preds = %108
  %115 = load i32, i32* %6, align 4
  store i32 %115, i32* %3, align 4
  br label %169

116:                                              ; preds = %2
  store i32 4, i32* %6, align 4
  %117 = load i32, i32* %5, align 4
  %118 = load i32, i32* %6, align 4
  %119 = icmp slt i32 %117, %118
  br i1 %119, label %120, label %121

120:                                              ; preds = %116
  store i32 -2, i32* %3, align 4
  br label %169

121:                                              ; preds = %116
  %122 = load %struct.lev_generic*, %struct.lev_generic** %4, align 8
  %123 = bitcast %struct.lev_generic* %122 to %struct.lev_copyexec_aux_transaction_cmd_wait*
  %124 = getelementptr inbounds %struct.lev_copyexec_aux_transaction_cmd_wait, %struct.lev_copyexec_aux_transaction_cmd_wait* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @do_wait(i32 %125)
  %127 = load i32, i32* %6, align 4
  store i32 %127, i32* %3, align 4
  br label %169

128:                                              ; preds = %2
  store i32 4, i32* %6, align 4
  %129 = load i32, i32* %5, align 4
  %130 = load i32, i32* %6, align 4
  %131 = icmp slt i32 %129, %130
  br i1 %131, label %132, label %133

132:                                              ; preds = %128
  store i32 -2, i32* %3, align 4
  br label %169

133:                                              ; preds = %128
  %134 = load %struct.lev_generic*, %struct.lev_generic** %4, align 8
  %135 = bitcast %struct.lev_generic* %134 to %struct.lev_copyexec_aux_transaction_cmd_wait*
  %136 = getelementptr inbounds %struct.lev_copyexec_aux_transaction_cmd_wait, %struct.lev_copyexec_aux_transaction_cmd_wait* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @do_cancel(i32 %137)
  %139 = load i32, i32* %6, align 4
  store i32 %139, i32* %3, align 4
  br label %169

140:                                              ; preds = %2
  store i32 8, i32* %6, align 4
  %141 = load i32, i32* %5, align 4
  %142 = load i32, i32* %6, align 4
  %143 = icmp slt i32 %141, %142
  br i1 %143, label %144, label %145

144:                                              ; preds = %140
  store i32 -2, i32* %3, align 4
  br label %169

145:                                              ; preds = %140
  %146 = load %struct.lev_generic*, %struct.lev_generic** %4, align 8
  %147 = bitcast %struct.lev_generic* %146 to %struct.lev_copyexec_aux_transaction_cmd_kill*
  %148 = getelementptr inbounds %struct.lev_copyexec_aux_transaction_cmd_kill, %struct.lev_copyexec_aux_transaction_cmd_kill* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.lev_generic*, %struct.lev_generic** %4, align 8
  %151 = bitcast %struct.lev_generic* %150 to %struct.lev_copyexec_aux_transaction_cmd_kill*
  %152 = getelementptr inbounds %struct.lev_copyexec_aux_transaction_cmd_kill, %struct.lev_copyexec_aux_transaction_cmd_kill* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @do_kill(i32 %149, i32 %153)
  %155 = load i32, i32* %6, align 4
  store i32 %155, i32* %3, align 4
  br label %169

156:                                              ; preds = %2
  store i32 4, i32* %6, align 4
  %157 = load i32, i32* %5, align 4
  %158 = load i32, i32* %6, align 4
  %159 = icmp slt i32 %157, %158
  br i1 %159, label %160, label %161

160:                                              ; preds = %156
  store i32 -2, i32* %3, align 4
  br label %169

161:                                              ; preds = %156
  %162 = load %struct.lev_generic*, %struct.lev_generic** %4, align 8
  %163 = bitcast %struct.lev_generic* %162 to %struct.lev_copyexec_aux_transaction_cmd_result*
  %164 = getelementptr inbounds %struct.lev_copyexec_aux_transaction_cmd_result, %struct.lev_copyexec_aux_transaction_cmd_result* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @do_result(i32 %165)
  %167 = load i32, i32* %6, align 4
  store i32 %167, i32* %3, align 4
  br label %169

168:                                              ; preds = %2
  store i32 -3, i32* %3, align 4
  br label %169

169:                                              ; preds = %168, %161, %160, %145, %144, %133, %132, %121, %120, %114, %113, %107, %96, %90, %89, %83, %72, %66, %65, %59, %48, %42, %41, %35, %19
  %170 = load i32, i32* %3, align 4
  ret i32 %170
}

declare dso_local i32 @vkprintf(i32, i8*, i32, i32) #1

declare dso_local i32 @do_file(%struct.lev_copyexec_aux_transaction_cmd_file*) #1

declare dso_local i32 @do_exec(%struct.lev_copyexec_aux_transaction_cmd_exec*, i32, i32) #1

declare dso_local i32 @do_wait(i32) #1

declare dso_local i32 @do_cancel(i32) #1

declare dso_local i32 @do_kill(i32, i32) #1

declare dso_local i32 @do_result(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
