; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_nl.c_drbd_adm_new_c_uuid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_nl.c_drbd_adm_new_c_uuid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i64* }
%struct.drbd_config_context = type { %struct.TYPE_14__*, i32, %struct.drbd_device* }
%struct.TYPE_14__ = type { i32 }
%struct.drbd_device = type { i32*, %struct.TYPE_13__*, %struct.TYPE_12__, %struct.TYPE_11__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64* }
%struct.new_c_uuid_parms = type { i64 }
%struct.TYPE_15__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }

@DRBD_ADM_NEED_MINOR = common dso_local global i32 0, align 4
@NO_ERROR = common dso_local global i32 0, align 4
@DRBD_NLA_NEW_C_UUID_PARMS = common dso_local global i64 0, align 8
@ERR_MANDATORY_TAG = common dso_local global i32 0, align 4
@ERR_NO_DISK = common dso_local global i32 0, align 4
@C_CONNECTED = common dso_local global i64 0, align 8
@UI_CURRENT = common dso_local global i64 0, align 8
@UUID_JUST_CREATED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"Preparing to skip initial sync\0A\00", align 1
@C_STANDALONE = common dso_local global i64 0, align 8
@ERR_CONNECTED = common dso_local global i32 0, align 4
@UI_BITMAP = common dso_local global i32 0, align 4
@drbd_bmio_clear_n_write = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"clear_n_write from new_c_uuid\00", align 1
@BM_LOCKED_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Writing bitmap failed with %d\0A\00", align 1
@ERR_IO_MD_DISK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"cleared bitmap UUID\00", align 1
@disk = common dso_local global i32 0, align 4
@D_UP_TO_DATE = common dso_local global i32 0, align 4
@pdsk = common dso_local global i32 0, align 4
@CS_VERBOSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drbd_adm_new_c_uuid(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.drbd_config_context, align 8
  %7 = alloca %struct.drbd_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.new_c_uuid_parms, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  store i32 0, i32* %9, align 4
  %12 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %13 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %14 = load i32, i32* @DRBD_ADM_NEED_MINOR, align 4
  %15 = call i32 @drbd_adm_prepare(%struct.drbd_config_context* %6, %struct.sk_buff* %12, %struct.genl_info* %13, i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = getelementptr inbounds %struct.drbd_config_context, %struct.drbd_config_context* %6, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* %8, align 4
  store i32 %20, i32* %3, align 4
  br label %178

21:                                               ; preds = %2
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @NO_ERROR, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  br label %174

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.drbd_config_context, %struct.drbd_config_context* %6, i32 0, i32 2
  %28 = load %struct.drbd_device*, %struct.drbd_device** %27, align 8
  store %struct.drbd_device* %28, %struct.drbd_device** %7, align 8
  %29 = call i32 @memset(%struct.new_c_uuid_parms* %11, i32 0, i32 8)
  %30 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %31 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %30, i32 0, i32 0
  %32 = load i64*, i64** %31, align 8
  %33 = load i64, i64* @DRBD_NLA_NEW_C_UUID_PARMS, align 8
  %34 = getelementptr inbounds i64, i64* %32, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %26
  %38 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %39 = call i32 @new_c_uuid_parms_from_attrs(%struct.new_c_uuid_parms* %11, %struct.genl_info* %38)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %37
  %43 = load i32, i32* @ERR_MANDATORY_TAG, align 4
  store i32 %43, i32* %8, align 4
  %44 = getelementptr inbounds %struct.drbd_config_context, %struct.drbd_config_context* %6, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %10, align 4
  %47 = call i32 @from_attrs_err_to_txt(i32 %46)
  %48 = call i32 @drbd_msg_put_info(i32 %45, i32 %47)
  br label %174

49:                                               ; preds = %37
  br label %50

50:                                               ; preds = %49, %26
  %51 = getelementptr inbounds %struct.drbd_config_context, %struct.drbd_config_context* %6, i32 0, i32 0
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 0
  %54 = call i32 @mutex_lock(i32* %53)
  %55 = load %struct.drbd_device*, %struct.drbd_device** %7, align 8
  %56 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = call i32 @mutex_lock(i32* %57)
  %59 = load %struct.drbd_device*, %struct.drbd_device** %7, align 8
  %60 = call i32 @get_ldev(%struct.drbd_device* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %50
  %63 = load i32, i32* @ERR_NO_DISK, align 4
  store i32 %63, i32* %8, align 4
  br label %165

64:                                               ; preds = %50
  %65 = load %struct.drbd_device*, %struct.drbd_device** %7, align 8
  %66 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @C_CONNECTED, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %98

71:                                               ; preds = %64
  %72 = load %struct.drbd_device*, %struct.drbd_device** %7, align 8
  %73 = call %struct.TYPE_15__* @first_peer_device(%struct.drbd_device* %72)
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = icmp sge i32 %77, 90
  br i1 %78, label %79, label %98

79:                                               ; preds = %71
  %80 = load %struct.drbd_device*, %struct.drbd_device** %7, align 8
  %81 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %80, i32 0, i32 3
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = load i64*, i64** %84, align 8
  %86 = load i64, i64* @UI_CURRENT, align 8
  %87 = getelementptr inbounds i64, i64* %85, i64 %86
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @UUID_JUST_CREATED, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %98

91:                                               ; preds = %79
  %92 = getelementptr inbounds %struct.new_c_uuid_parms, %struct.new_c_uuid_parms* %11, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %91
  %96 = load %struct.drbd_device*, %struct.drbd_device** %7, align 8
  %97 = call i32 @drbd_info(%struct.drbd_device* %96, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %9, align 4
  br label %108

98:                                               ; preds = %91, %79, %71, %64
  %99 = load %struct.drbd_device*, %struct.drbd_device** %7, align 8
  %100 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @C_STANDALONE, align 8
  %104 = icmp ne i64 %102, %103
  br i1 %104, label %105, label %107

105:                                              ; preds = %98
  %106 = load i32, i32* @ERR_CONNECTED, align 4
  store i32 %106, i32* %8, align 4
  br label %162

107:                                              ; preds = %98
  br label %108

108:                                              ; preds = %107, %95
  %109 = load %struct.drbd_device*, %struct.drbd_device** %7, align 8
  %110 = load i32, i32* @UI_BITMAP, align 4
  %111 = call i32 @drbd_uuid_set(%struct.drbd_device* %109, i32 %110, i32 0)
  %112 = load %struct.drbd_device*, %struct.drbd_device** %7, align 8
  %113 = call i32 @drbd_uuid_new_current(%struct.drbd_device* %112)
  %114 = getelementptr inbounds %struct.new_c_uuid_parms, %struct.new_c_uuid_parms* %11, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %159

117:                                              ; preds = %108
  %118 = load %struct.drbd_device*, %struct.drbd_device** %7, align 8
  %119 = load i32, i32* @BM_LOCKED_MASK, align 4
  %120 = call i32 @drbd_bitmap_io(%struct.drbd_device* %118, i32* @drbd_bmio_clear_n_write, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %119)
  store i32 %120, i32* %10, align 4
  %121 = load i32, i32* %10, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %117
  %124 = load %struct.drbd_device*, %struct.drbd_device** %7, align 8
  %125 = load i32, i32* %10, align 4
  %126 = call i32 @drbd_err(%struct.drbd_device* %124, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %125)
  %127 = load i32, i32* @ERR_IO_MD_DISK, align 4
  store i32 %127, i32* %8, align 4
  br label %128

128:                                              ; preds = %123, %117
  %129 = load i32, i32* %9, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %158

131:                                              ; preds = %128
  %132 = load %struct.drbd_device*, %struct.drbd_device** %7, align 8
  %133 = call %struct.TYPE_15__* @first_peer_device(%struct.drbd_device* %132)
  %134 = call i32 @drbd_send_uuids_skip_initial_sync(%struct.TYPE_15__* %133)
  %135 = load %struct.drbd_device*, %struct.drbd_device** %7, align 8
  %136 = load i32, i32* @UI_BITMAP, align 4
  %137 = call i32 @_drbd_uuid_set(%struct.drbd_device* %135, i32 %136, i32 0)
  %138 = load %struct.drbd_device*, %struct.drbd_device** %7, align 8
  %139 = call i32 @drbd_print_uuids(%struct.drbd_device* %138, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %140 = load %struct.drbd_device*, %struct.drbd_device** %7, align 8
  %141 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %140, i32 0, i32 1
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i32 0, i32 0
  %144 = call i32 @spin_lock_irq(i32* %143)
  %145 = load %struct.drbd_device*, %struct.drbd_device** %7, align 8
  %146 = load i32, i32* @disk, align 4
  %147 = load i32, i32* @D_UP_TO_DATE, align 4
  %148 = load i32, i32* @pdsk, align 4
  %149 = load i32, i32* @D_UP_TO_DATE, align 4
  %150 = call i32 @_NS2(%struct.drbd_device* %145, i32 %146, i32 %147, i32 %148, i32 %149)
  %151 = load i32, i32* @CS_VERBOSE, align 4
  %152 = call i32 @_drbd_set_state(i32 %150, i32 %151, i32* null)
  %153 = load %struct.drbd_device*, %struct.drbd_device** %7, align 8
  %154 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %153, i32 0, i32 1
  %155 = load %struct.TYPE_13__*, %struct.TYPE_13__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i32 0, i32 0
  %157 = call i32 @spin_unlock_irq(i32* %156)
  br label %158

158:                                              ; preds = %131, %128
  br label %159

159:                                              ; preds = %158, %108
  %160 = load %struct.drbd_device*, %struct.drbd_device** %7, align 8
  %161 = call i32 @drbd_md_sync(%struct.drbd_device* %160)
  br label %162

162:                                              ; preds = %159, %105
  %163 = load %struct.drbd_device*, %struct.drbd_device** %7, align 8
  %164 = call i32 @put_ldev(%struct.drbd_device* %163)
  br label %165

165:                                              ; preds = %162, %62
  %166 = load %struct.drbd_device*, %struct.drbd_device** %7, align 8
  %167 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %166, i32 0, i32 0
  %168 = load i32*, i32** %167, align 8
  %169 = call i32 @mutex_unlock(i32* %168)
  %170 = getelementptr inbounds %struct.drbd_config_context, %struct.drbd_config_context* %6, i32 0, i32 0
  %171 = load %struct.TYPE_14__*, %struct.TYPE_14__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %171, i32 0, i32 0
  %173 = call i32 @mutex_unlock(i32* %172)
  br label %174

174:                                              ; preds = %165, %42, %25
  %175 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %176 = load i32, i32* %8, align 4
  %177 = call i32 @drbd_adm_finish(%struct.drbd_config_context* %6, %struct.genl_info* %175, i32 %176)
  store i32 0, i32* %3, align 4
  br label %178

178:                                              ; preds = %174, %19
  %179 = load i32, i32* %3, align 4
  ret i32 %179
}

declare dso_local i32 @drbd_adm_prepare(%struct.drbd_config_context*, %struct.sk_buff*, %struct.genl_info*, i32) #1

declare dso_local i32 @memset(%struct.new_c_uuid_parms*, i32, i32) #1

declare dso_local i32 @new_c_uuid_parms_from_attrs(%struct.new_c_uuid_parms*, %struct.genl_info*) #1

declare dso_local i32 @drbd_msg_put_info(i32, i32) #1

declare dso_local i32 @from_attrs_err_to_txt(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @get_ldev(%struct.drbd_device*) #1

declare dso_local %struct.TYPE_15__* @first_peer_device(%struct.drbd_device*) #1

declare dso_local i32 @drbd_info(%struct.drbd_device*, i8*) #1

declare dso_local i32 @drbd_uuid_set(%struct.drbd_device*, i32, i32) #1

declare dso_local i32 @drbd_uuid_new_current(%struct.drbd_device*) #1

declare dso_local i32 @drbd_bitmap_io(%struct.drbd_device*, i32*, i8*, i32) #1

declare dso_local i32 @drbd_err(%struct.drbd_device*, i8*, i32) #1

declare dso_local i32 @drbd_send_uuids_skip_initial_sync(%struct.TYPE_15__*) #1

declare dso_local i32 @_drbd_uuid_set(%struct.drbd_device*, i32, i32) #1

declare dso_local i32 @drbd_print_uuids(%struct.drbd_device*, i8*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @_drbd_set_state(i32, i32, i32*) #1

declare dso_local i32 @_NS2(%struct.drbd_device*, i32, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @drbd_md_sync(%struct.drbd_device*) #1

declare dso_local i32 @put_ldev(%struct.drbd_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @drbd_adm_finish(%struct.drbd_config_context*, %struct.genl_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
