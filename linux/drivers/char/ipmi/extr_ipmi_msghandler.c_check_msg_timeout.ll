; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_msghandler.c_check_msg_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_msghandler.c_check_msg_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipmi_smi = type { i32, i64, i64 }
%struct.seq_table = type { i64, i64, %struct.ipmi_recv_msg*, i32, i64, i64 }
%struct.ipmi_recv_msg = type { i32, i32 }
%struct.list_head = type { i32 }
%struct.ipmi_smi_msg = type { i32 }

@IPMI_WATCH_MASK_CHECK_MESSAGES = common dso_local global i32 0, align 4
@timed_out_ipmb_broadcasts = common dso_local global i32 0, align 4
@timed_out_lan_commands = common dso_local global i32 0, align 4
@timed_out_ipmb_commands = common dso_local global i32 0, align 4
@MAX_MSG_TIMEOUT = common dso_local global i64 0, align 8
@dropped_rexmit_lan_commands = common dso_local global i32 0, align 4
@dropped_rexmit_ipmb_commands = common dso_local global i32 0, align 4
@retransmitted_lan_commands = common dso_local global i32 0, align 4
@retransmitted_ipmb_commands = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipmi_smi*, %struct.seq_table*, %struct.list_head*, i64, i32, i64*, i32*)* @check_msg_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_msg_timeout(%struct.ipmi_smi* %0, %struct.seq_table* %1, %struct.list_head* %2, i64 %3, i32 %4, i64* %5, i32* %6) #0 {
  %8 = alloca %struct.ipmi_smi*, align 8
  %9 = alloca %struct.seq_table*, align 8
  %10 = alloca %struct.list_head*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.ipmi_recv_msg*, align 8
  %16 = alloca %struct.ipmi_smi_msg*, align 8
  store %struct.ipmi_smi* %0, %struct.ipmi_smi** %8, align 8
  store %struct.seq_table* %1, %struct.seq_table** %9, align 8
  store %struct.list_head* %2, %struct.list_head** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i64* %5, i64** %13, align 8
  store i32* %6, i32** %14, align 8
  %17 = load %struct.ipmi_smi*, %struct.ipmi_smi** %8, align 8
  %18 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %7
  br label %161

22:                                               ; preds = %7
  %23 = load %struct.seq_table*, %struct.seq_table** %9, align 8
  %24 = getelementptr inbounds %struct.seq_table, %struct.seq_table* %23, i32 0, i32 5
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  br label %161

28:                                               ; preds = %22
  %29 = load i64, i64* %11, align 8
  %30 = load %struct.seq_table*, %struct.seq_table** %9, align 8
  %31 = getelementptr inbounds %struct.seq_table, %struct.seq_table* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ult i64 %29, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %28
  %35 = load i64, i64* %11, align 8
  %36 = load %struct.seq_table*, %struct.seq_table** %9, align 8
  %37 = getelementptr inbounds %struct.seq_table, %struct.seq_table* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = sub i64 %38, %35
  store i64 %39, i64* %37, align 8
  %40 = load i32*, i32** %14, align 8
  store i32 1, i32* %40, align 4
  br label %161

41:                                               ; preds = %28
  %42 = load %struct.seq_table*, %struct.seq_table** %9, align 8
  %43 = getelementptr inbounds %struct.seq_table, %struct.seq_table* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %84

46:                                               ; preds = %41
  %47 = load %struct.seq_table*, %struct.seq_table** %9, align 8
  %48 = getelementptr inbounds %struct.seq_table, %struct.seq_table* %47, i32 0, i32 5
  store i64 0, i64* %48, align 8
  %49 = load %struct.ipmi_smi*, %struct.ipmi_smi** %8, align 8
  %50 = load i32, i32* @IPMI_WATCH_MASK_CHECK_MESSAGES, align 4
  %51 = call i32 @smi_remove_watch(%struct.ipmi_smi* %49, i32 %50)
  %52 = load %struct.seq_table*, %struct.seq_table** %9, align 8
  %53 = getelementptr inbounds %struct.seq_table, %struct.seq_table* %52, i32 0, i32 2
  %54 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %53, align 8
  store %struct.ipmi_recv_msg* %54, %struct.ipmi_recv_msg** %15, align 8
  %55 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %15, align 8
  %56 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %55, i32 0, i32 1
  %57 = load %struct.list_head*, %struct.list_head** %10, align 8
  %58 = call i32 @list_add_tail(i32* %56, %struct.list_head* %57)
  %59 = load %struct.seq_table*, %struct.seq_table** %9, align 8
  %60 = getelementptr inbounds %struct.seq_table, %struct.seq_table* %59, i32 0, i32 4
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %46
  %64 = load %struct.ipmi_smi*, %struct.ipmi_smi** %8, align 8
  %65 = load i32, i32* @timed_out_ipmb_broadcasts, align 4
  %66 = call i32 @ipmi_inc_stat(%struct.ipmi_smi* %64, i32 %65)
  br label %83

67:                                               ; preds = %46
  %68 = load %struct.seq_table*, %struct.seq_table** %9, align 8
  %69 = getelementptr inbounds %struct.seq_table, %struct.seq_table* %68, i32 0, i32 2
  %70 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %69, align 8
  %71 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %70, i32 0, i32 0
  %72 = call i64 @is_lan_addr(i32* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %67
  %75 = load %struct.ipmi_smi*, %struct.ipmi_smi** %8, align 8
  %76 = load i32, i32* @timed_out_lan_commands, align 4
  %77 = call i32 @ipmi_inc_stat(%struct.ipmi_smi* %75, i32 %76)
  br label %82

78:                                               ; preds = %67
  %79 = load %struct.ipmi_smi*, %struct.ipmi_smi** %8, align 8
  %80 = load i32, i32* @timed_out_ipmb_commands, align 4
  %81 = call i32 @ipmi_inc_stat(%struct.ipmi_smi* %79, i32 %80)
  br label %82

82:                                               ; preds = %78, %74
  br label %83

83:                                               ; preds = %82, %63
  br label %161

84:                                               ; preds = %41
  %85 = load i32*, i32** %14, align 8
  store i32 1, i32* %85, align 4
  %86 = load i64, i64* @MAX_MSG_TIMEOUT, align 8
  %87 = load %struct.seq_table*, %struct.seq_table** %9, align 8
  %88 = getelementptr inbounds %struct.seq_table, %struct.seq_table* %87, i32 0, i32 0
  store i64 %86, i64* %88, align 8
  %89 = load %struct.seq_table*, %struct.seq_table** %9, align 8
  %90 = getelementptr inbounds %struct.seq_table, %struct.seq_table* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = add nsw i64 %91, -1
  store i64 %92, i64* %90, align 8
  %93 = load %struct.ipmi_smi*, %struct.ipmi_smi** %8, align 8
  %94 = load %struct.seq_table*, %struct.seq_table** %9, align 8
  %95 = getelementptr inbounds %struct.seq_table, %struct.seq_table* %94, i32 0, i32 2
  %96 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %95, align 8
  %97 = load i32, i32* %12, align 4
  %98 = load %struct.seq_table*, %struct.seq_table** %9, align 8
  %99 = getelementptr inbounds %struct.seq_table, %struct.seq_table* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 8
  %101 = call %struct.ipmi_smi_msg* @smi_from_recv_msg(%struct.ipmi_smi* %93, %struct.ipmi_recv_msg* %96, i32 %97, i32 %100)
  store %struct.ipmi_smi_msg* %101, %struct.ipmi_smi_msg** %16, align 8
  %102 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %16, align 8
  %103 = icmp ne %struct.ipmi_smi_msg* %102, null
  br i1 %103, label %120, label %104

104:                                              ; preds = %84
  %105 = load %struct.seq_table*, %struct.seq_table** %9, align 8
  %106 = getelementptr inbounds %struct.seq_table, %struct.seq_table* %105, i32 0, i32 2
  %107 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %106, align 8
  %108 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %107, i32 0, i32 0
  %109 = call i64 @is_lan_addr(i32* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %104
  %112 = load %struct.ipmi_smi*, %struct.ipmi_smi** %8, align 8
  %113 = load i32, i32* @dropped_rexmit_lan_commands, align 4
  %114 = call i32 @ipmi_inc_stat(%struct.ipmi_smi* %112, i32 %113)
  br label %119

115:                                              ; preds = %104
  %116 = load %struct.ipmi_smi*, %struct.ipmi_smi** %8, align 8
  %117 = load i32, i32* @dropped_rexmit_ipmb_commands, align 4
  %118 = call i32 @ipmi_inc_stat(%struct.ipmi_smi* %116, i32 %117)
  br label %119

119:                                              ; preds = %115, %111
  br label %161

120:                                              ; preds = %84
  %121 = load %struct.ipmi_smi*, %struct.ipmi_smi** %8, align 8
  %122 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %121, i32 0, i32 0
  %123 = load i64*, i64** %13, align 8
  %124 = load i64, i64* %123, align 8
  %125 = call i32 @spin_unlock_irqrestore(i32* %122, i64 %124)
  %126 = load %struct.ipmi_smi*, %struct.ipmi_smi** %8, align 8
  %127 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %152

130:                                              ; preds = %120
  %131 = load %struct.seq_table*, %struct.seq_table** %9, align 8
  %132 = getelementptr inbounds %struct.seq_table, %struct.seq_table* %131, i32 0, i32 2
  %133 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %132, align 8
  %134 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %133, i32 0, i32 0
  %135 = call i64 @is_lan_addr(i32* %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %130
  %138 = load %struct.ipmi_smi*, %struct.ipmi_smi** %8, align 8
  %139 = load i32, i32* @retransmitted_lan_commands, align 4
  %140 = call i32 @ipmi_inc_stat(%struct.ipmi_smi* %138, i32 %139)
  br label %145

141:                                              ; preds = %130
  %142 = load %struct.ipmi_smi*, %struct.ipmi_smi** %8, align 8
  %143 = load i32, i32* @retransmitted_ipmb_commands, align 4
  %144 = call i32 @ipmi_inc_stat(%struct.ipmi_smi* %142, i32 %143)
  br label %145

145:                                              ; preds = %141, %137
  %146 = load %struct.ipmi_smi*, %struct.ipmi_smi** %8, align 8
  %147 = load %struct.ipmi_smi*, %struct.ipmi_smi** %8, align 8
  %148 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %16, align 8
  %151 = call i32 @smi_send(%struct.ipmi_smi* %146, i64 %149, %struct.ipmi_smi_msg* %150, i32 0)
  br label %155

152:                                              ; preds = %120
  %153 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %16, align 8
  %154 = call i32 @ipmi_free_smi_msg(%struct.ipmi_smi_msg* %153)
  br label %155

155:                                              ; preds = %152, %145
  %156 = load %struct.ipmi_smi*, %struct.ipmi_smi** %8, align 8
  %157 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %156, i32 0, i32 0
  %158 = load i64*, i64** %13, align 8
  %159 = load i64, i64* %158, align 8
  %160 = call i32 @spin_lock_irqsave(i32* %157, i64 %159)
  br label %161

161:                                              ; preds = %21, %27, %34, %119, %155, %83
  ret void
}

declare dso_local i32 @smi_remove_watch(%struct.ipmi_smi*, i32) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

declare dso_local i32 @ipmi_inc_stat(%struct.ipmi_smi*, i32) #1

declare dso_local i64 @is_lan_addr(i32*) #1

declare dso_local %struct.ipmi_smi_msg* @smi_from_recv_msg(%struct.ipmi_smi*, %struct.ipmi_recv_msg*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @smi_send(%struct.ipmi_smi*, i64, %struct.ipmi_smi_msg*, i32) #1

declare dso_local i32 @ipmi_free_smi_msg(%struct.ipmi_smi_msg*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
