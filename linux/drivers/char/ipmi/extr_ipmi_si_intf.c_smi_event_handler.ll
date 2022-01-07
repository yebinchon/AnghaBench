; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_si_intf.c_smi_event_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_si_intf.c_smi_event_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smi_info = type { i64, i32, i32, i32, i32*, %struct.TYPE_4__, i64, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 (i32, i32)* }

@SI_SM_CALL_WITHOUT_DELAY = common dso_local global i32 0, align 4
@SI_SM_TRANSACTION_COMPLETE = common dso_local global i32 0, align 4
@complete_transactions = common dso_local global i32 0, align 4
@SI_SM_HOSED = common dso_local global i32 0, align 4
@hosed_count = common dso_local global i32 0, align 4
@SI_NORMAL = common dso_local global i64 0, align 8
@IPMI_ERR_UNSPECIFIED = common dso_local global i32 0, align 4
@SI_SM_ATTN = common dso_local global i32 0, align 4
@attentions = common dso_local global i32 0, align 4
@IPMI_NETFN_APP_REQUEST = common dso_local global i32 0, align 4
@IPMI_GET_MSG_FLAGS_CMD = common dso_local global i8 0, align 1
@SI_GETTING_FLAGS = common dso_local global i64 0, align 8
@SI_SM_IDLE = common dso_local global i32 0, align 4
@idles = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smi_info*, i32)* @smi_event_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smi_event_handler(%struct.smi_info* %0, i32 %1) #0 {
  %3 = alloca %struct.smi_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [2 x i8], align 1
  store %struct.smi_info* %0, %struct.smi_info** %3, align 8
  store i32 %1, i32* %4, align 4
  br label %7

7:                                                ; preds = %154, %113, %81, %61, %36, %2
  %8 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %9 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %8, i32 0, i32 9
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32 (i32, i32)*, i32 (i32, i32)** %11, align 8
  %13 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %14 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %13, i32 0, i32 8
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i32 %12(i32 %15, i32 %16)
  store i32 %17, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %18

18:                                               ; preds = %22, %7
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @SI_SM_CALL_WITHOUT_DELAY, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %32

22:                                               ; preds = %18
  %23 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %24 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %23, i32 0, i32 9
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32 (i32, i32)*, i32 (i32, i32)** %26, align 8
  %28 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %29 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %28, i32 0, i32 8
  %30 = load i32, i32* %29, align 4
  %31 = call i32 %27(i32 %30, i32 0)
  store i32 %31, i32* %5, align 4
  br label %18

32:                                               ; preds = %18
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @SI_SM_TRANSACTION_COMPLETE, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %32
  %37 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %38 = load i32, i32* @complete_transactions, align 4
  %39 = call i32 @smi_inc_stat(%struct.smi_info* %37, i32 %38)
  %40 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %41 = call i32 @handle_transaction_done(%struct.smi_info* %40)
  br label %7

42:                                               ; preds = %32
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @SI_SM_HOSED, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %62

46:                                               ; preds = %42
  %47 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %48 = load i32, i32* @hosed_count, align 4
  %49 = call i32 @smi_inc_stat(%struct.smi_info* %47, i32 %48)
  %50 = load i64, i64* @SI_NORMAL, align 8
  %51 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %52 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %51, i32 0, i32 0
  store i64 %50, i64* %52, align 8
  %53 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %54 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %53, i32 0, i32 4
  %55 = load i32*, i32** %54, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %61

57:                                               ; preds = %46
  %58 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %59 = load i32, i32* @IPMI_ERR_UNSPECIFIED, align 4
  %60 = call i32 @return_hosed_msg(%struct.smi_info* %58, i32 %59)
  br label %61

61:                                               ; preds = %57, %46
  br label %7

62:                                               ; preds = %42
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* @SI_SM_ATTN, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %72, label %67

67:                                               ; preds = %63
  %68 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %69 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %100

72:                                               ; preds = %67, %63
  %73 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %74 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @SI_NORMAL, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %72
  %79 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %80 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %79, i32 0, i32 1
  store i32 1, i32* %80, align 8
  br label %99

81:                                               ; preds = %72
  %82 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %83 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %82, i32 0, i32 1
  store i32 0, i32* %83, align 8
  %84 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %85 = load i32, i32* @attentions, align 4
  %86 = call i32 @smi_inc_stat(%struct.smi_info* %84, i32 %85)
  %87 = load i32, i32* @IPMI_NETFN_APP_REQUEST, align 4
  %88 = shl i32 %87, 2
  %89 = trunc i32 %88 to i8
  %90 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  store i8 %89, i8* %90, align 1
  %91 = load i8, i8* @IPMI_GET_MSG_FLAGS_CMD, align 1
  %92 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 1
  store i8 %91, i8* %92, align 1
  %93 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %94 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  %95 = call i32 @start_new_msg(%struct.smi_info* %93, i8* %94, i32 2)
  %96 = load i64, i64* @SI_GETTING_FLAGS, align 8
  %97 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %98 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %97, i32 0, i32 0
  store i64 %96, i64* %98, align 8
  br label %7

99:                                               ; preds = %78
  br label %100

100:                                              ; preds = %99, %67
  %101 = load i32, i32* %5, align 4
  %102 = load i32, i32* @SI_SM_IDLE, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %115

104:                                              ; preds = %100
  %105 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %106 = load i32, i32* @idles, align 4
  %107 = call i32 @smi_inc_stat(%struct.smi_info* %105, i32 %106)
  %108 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %109 = call i32 @start_next_msg(%struct.smi_info* %108)
  store i32 %109, i32* %5, align 4
  %110 = load i32, i32* %5, align 4
  %111 = load i32, i32* @SI_SM_IDLE, align 4
  %112 = icmp ne i32 %110, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %104
  br label %7

114:                                              ; preds = %104
  br label %115

115:                                              ; preds = %114, %100
  %116 = load i32, i32* %5, align 4
  %117 = load i32, i32* @SI_SM_IDLE, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %119, label %155

119:                                              ; preds = %115
  %120 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %121 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %120, i32 0, i32 7
  %122 = call i64 @atomic_read(i32* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %155

124:                                              ; preds = %119
  %125 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %126 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %125, i32 0, i32 7
  %127 = call i32 @atomic_set(i32* %126, i32 0)
  %128 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %129 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %128, i32 0, i32 6
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %138, label %132

132:                                              ; preds = %124
  %133 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %134 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %133, i32 0, i32 5
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %132, %124
  %139 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %140 = call i32 @start_check_enables(%struct.smi_info* %139)
  br label %154

141:                                              ; preds = %132
  %142 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %143 = call i32* @alloc_msg_handle_irq(%struct.smi_info* %142)
  %144 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %145 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %144, i32 0, i32 4
  store i32* %143, i32** %145, align 8
  %146 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %147 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %146, i32 0, i32 4
  %148 = load i32*, i32** %147, align 8
  %149 = icmp ne i32* %148, null
  br i1 %149, label %151, label %150

150:                                              ; preds = %141
  br label %174

151:                                              ; preds = %141
  %152 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %153 = call i32 @start_getting_events(%struct.smi_info* %152)
  br label %154

154:                                              ; preds = %151, %138
  br label %7

155:                                              ; preds = %119, %115
  %156 = load i32, i32* %5, align 4
  %157 = load i32, i32* @SI_SM_IDLE, align 4
  %158 = icmp eq i32 %156, %157
  br i1 %158, label %159, label %173

159:                                              ; preds = %155
  %160 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %161 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %173

164:                                              ; preds = %159
  %165 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %166 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %165, i32 0, i32 3
  %167 = call i64 @del_timer(i32* %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %172

169:                                              ; preds = %164
  %170 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %171 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %170, i32 0, i32 2
  store i32 0, i32* %171, align 4
  br label %172

172:                                              ; preds = %169, %164
  br label %173

173:                                              ; preds = %172, %159, %155
  br label %174

174:                                              ; preds = %173, %150
  %175 = load i32, i32* %5, align 4
  ret i32 %175
}

declare dso_local i32 @smi_inc_stat(%struct.smi_info*, i32) #1

declare dso_local i32 @handle_transaction_done(%struct.smi_info*) #1

declare dso_local i32 @return_hosed_msg(%struct.smi_info*, i32) #1

declare dso_local i32 @start_new_msg(%struct.smi_info*, i8*, i32) #1

declare dso_local i32 @start_next_msg(%struct.smi_info*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @start_check_enables(%struct.smi_info*) #1

declare dso_local i32* @alloc_msg_handle_irq(%struct.smi_info*) #1

declare dso_local i32 @start_getting_events(%struct.smi_info*) #1

declare dso_local i64 @del_timer(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
