; ModuleID = '/home/carl/AnghaBench/kphp-kdb/copyexec/extr_copyexec-data.c_exec_transaction.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/copyexec/extr_copyexec-data.c_exec_transaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32, i32, i64, i64, i64, i32, %struct.TYPE_16__*, i64, i8* }
%struct.TYPE_17__ = type { i64, i32, i32, i32, i32 }
%struct.lev_copyexec_main_transaction_status = type { i32, i32, i64, i64, i64, i64, i8*, i32 }
%struct.lev_copyexec_aux_transaction_header = type { i32 }
%struct.stat = type { i64, i64 }
%struct.sigaction = type { i64, i32, i32 }
%struct.buffered_logevent = type { i32 }

@first_transaction_id = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"skip tr%d (first_transaction_id = %d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"exec_transaction (id = %d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"skip tr%d (status = %d)\0A\00", align 1
@ts_unset = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [84 x i8] c"decrypt_transaction (key_id: %d, binlog_pos: %lld, transaction_id: %d) returns %s.\0A\00", align 1
@ts_decryption_failed = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"transaction was successfully decrypted.\0A\00", align 1
@instance_mask = common dso_local global i32 0, align 4
@ts_ignored = common dso_local global i32 0, align 4
@transaction_dir = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"transaction_dir = %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [59 x i8] c"exec_transaction: T->status = %d (T->status != ts_unset).\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"mkdir %s failed. %m\0A\00", align 1
@COPYEXEC_ERR_MKDIR = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [21 x i8] c"chdir %s failed. %m\0A\00", align 1
@COPYEXEC_ERR_CHDIR = common dso_local global i32 0, align 4
@cur_transaction_binlog_name = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [24 x i8] c"[tr%d] binlog_name: %s\0A\00", align 1
@O_WRONLY = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@O_EXCL = common dso_local global i32 0, align 4
@fd_transaction_logevents = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [23 x i8] c"creat (%s) failed. %m\0A\00", align 1
@COPYEXEC_ERR_CREAT = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [23 x i8] c"fstat (%s) failed. %m\0A\00", align 1
@COPYEXEC_ERR_FSTAT = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@copyexec_transaction_process_sigint_handler = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [20 x i8] c"fork () failed. %m\0A\00", align 1
@COPYEXEC_ERR_FORK = common dso_local global i32 0, align 4
@ts_running = common dso_local global i32 0, align 4
@child_running_list = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@sigterm_receiver_pid = common dso_local global i64 0, align 8
@transaction_interrupting_signal = common dso_local global i32 0, align 4
@Binlog = common dso_local global i32 0, align 4
@fd_aux_binlog = common dso_local global i64 0, align 8
@epoll_fd = common dso_local global i64 0, align 8
@sfd = common dso_local global i64 0, align 8
@cur_transaction_hash = common dso_local global i32 0, align 4
@cmd_id = common dso_local global i64 0, align 8
@cur_transaction_id = common dso_local global i64 0, align 8
@MASK_WAITING_TRANSACTION = common dso_local global i32 0, align 4
@auto_running_list = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@SIGUSR2 = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [27 x i8] c"transaction: %d, res = %d\0A\00", align 1
@LEV_COPYEXEC_MAIN_TRANSACTION_STATUS = common dso_local global i32 0, align 4
@ts_interrupted = common dso_local global i64 0, align 8
@ts_cancelled = common dso_local global i64 0, align 8
@cur_transaction_result = common dso_local global i32 0, align 4
@ts_failed = common dso_local global i64 0, align 8
@ts_terminated = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @exec_transaction(%struct.TYPE_17__* %0) #0 {
  %2 = alloca %struct.TYPE_17__*, align 8
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.lev_copyexec_main_transaction_status*, align 8
  %8 = alloca %struct.lev_copyexec_aux_transaction_header*, align 8
  %9 = alloca %struct.lev_copyexec_main_transaction_status*, align 8
  %10 = alloca %struct.stat, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.sigaction, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.lev_copyexec_main_transaction_status*, align 8
  %15 = alloca %struct.TYPE_16__*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.buffered_logevent, align 4
  %22 = alloca %struct.lev_copyexec_main_transaction_status*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %2, align 8
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @first_transaction_id, align 8
  %27 = icmp slt i64 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %1
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @first_transaction_id, align 8
  %33 = call i32 (i32, i8*, ...) @vkprintf(i32 3, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i64 %31, i64 %32)
  br label %568

34:                                               ; preds = %1
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i32 (i32, i8*, ...) @vkprintf(i32 3, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i64 %37)
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call %struct.TYPE_16__* @get_transaction_f(i64 %41, i32 0)
  store %struct.TYPE_16__* %42, %struct.TYPE_16__** %3, align 8
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %44 = icmp ne %struct.TYPE_16__* %43, null
  br i1 %44, label %45, label %58

45:                                               ; preds = %34
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %47 = call i32 @transaction_want_exec(%struct.TYPE_16__* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %57, label %49

49:                                               ; preds = %45
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 (i32, i8*, ...) @vkprintf(i32 3, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i64 %52, i32 %55)
  br label %568

57:                                               ; preds = %45
  br label %58

58:                                               ; preds = %57, %34
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %60 = icmp eq %struct.TYPE_16__* %59, null
  br i1 %60, label %61, label %75

61:                                               ; preds = %58
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call %struct.TYPE_16__* @get_transaction_f(i64 %64, i32 1)
  store %struct.TYPE_16__* %65, %struct.TYPE_16__** %3, align 8
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %67 = icmp eq %struct.TYPE_16__* %66, null
  br i1 %67, label %68, label %70

68:                                               ; preds = %61
  %69 = call i32 (...) @copyexec_abort()
  br label %70

70:                                               ; preds = %68, %61
  %71 = load i64, i64* @ts_unset, align 8
  %72 = trunc i64 %71 to i32
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  br label %75

75:                                               ; preds = %70, %58
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 6
  store i32 %78, i32* %80, align 8
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = call i32 @decrypt_transaction(i32 %83, i32 %86, i32 %89, i32 %92, i64 %95, i8** %4, i32* %5)
  store i32 %96, i32* %6, align 4
  %97 = load i32, i32* %6, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %129

99:                                               ; preds = %75
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %101 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %107 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i32, i32* %6, align 4
  %110 = call i32 @copyexec_strerror(i32 %109)
  %111 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.3, i64 0, i64 0), i32 %102, i32 %105, i64 %108, i32 %110)
  %112 = call i32 (...) @handle_failure()
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %114 = load i32, i32* @ts_decryption_failed, align 4
  %115 = call i32 @transaction_change_status(%struct.TYPE_16__* %113, i32 %114)
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %117 = call %struct.lev_copyexec_main_transaction_status* @transaction_alloc_log_event_status(%struct.TYPE_16__* %116)
  store %struct.lev_copyexec_main_transaction_status* %117, %struct.lev_copyexec_main_transaction_status** %7, align 8
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %118, i32 0, i32 6
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.lev_copyexec_main_transaction_status*, %struct.lev_copyexec_main_transaction_status** %7, align 8
  %122 = getelementptr inbounds %struct.lev_copyexec_main_transaction_status, %struct.lev_copyexec_main_transaction_status* %121, i32 0, i32 7
  store i32 %120, i32* %122, align 8
  %123 = load i32, i32* %6, align 4
  %124 = sub nsw i32 0, %123
  %125 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %125, i32 0, i32 1
  store i32 %124, i32* %126, align 4
  %127 = load %struct.lev_copyexec_main_transaction_status*, %struct.lev_copyexec_main_transaction_status** %7, align 8
  %128 = getelementptr inbounds %struct.lev_copyexec_main_transaction_status, %struct.lev_copyexec_main_transaction_status* %127, i32 0, i32 0
  store i32 %124, i32* %128, align 8
  br label %568

129:                                              ; preds = %75
  %130 = call i32 (i32, i8*, ...) @vkprintf(i32 3, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  %131 = load i8*, i8** %4, align 8
  %132 = bitcast i8* %131 to %struct.lev_copyexec_aux_transaction_header*
  store %struct.lev_copyexec_aux_transaction_header* %132, %struct.lev_copyexec_aux_transaction_header** %8, align 8
  %133 = load %struct.lev_copyexec_aux_transaction_header*, %struct.lev_copyexec_aux_transaction_header** %8, align 8
  %134 = getelementptr inbounds %struct.lev_copyexec_aux_transaction_header, %struct.lev_copyexec_aux_transaction_header* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %136, i32 0, i32 2
  store i32 %135, i32* %137, align 8
  %138 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* @instance_mask, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %149

144:                                              ; preds = %129
  %145 = load i8*, i8** %4, align 8
  %146 = load i32, i32* %5, align 4
  %147 = call i64 @synchronization_point_transaction(i8* %145, i32 %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %167

149:                                              ; preds = %144, %129
  %150 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %151 = load i32, i32* @ts_ignored, align 4
  %152 = call i32 @transaction_change_status(%struct.TYPE_16__* %150, i32 %151)
  %153 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %154 = call %struct.lev_copyexec_main_transaction_status* @transaction_alloc_log_event_status(%struct.TYPE_16__* %153)
  store %struct.lev_copyexec_main_transaction_status* %154, %struct.lev_copyexec_main_transaction_status** %9, align 8
  %155 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %156 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %155, i32 0, i32 6
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.lev_copyexec_main_transaction_status*, %struct.lev_copyexec_main_transaction_status** %9, align 8
  %159 = getelementptr inbounds %struct.lev_copyexec_main_transaction_status, %struct.lev_copyexec_main_transaction_status* %158, i32 0, i32 7
  store i32 %157, i32* %159, align 8
  %160 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %161 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.lev_copyexec_main_transaction_status*, %struct.lev_copyexec_main_transaction_status** %9, align 8
  %164 = getelementptr inbounds %struct.lev_copyexec_main_transaction_status, %struct.lev_copyexec_main_transaction_status* %163, i32 0, i32 1
  store i32 %162, i32* %164, align 4
  %165 = load i8*, i8** %4, align 8
  %166 = call i32 @free(i8* %165)
  br label %568

167:                                              ; preds = %144
  %168 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %169 = load i32, i32* @transaction_dir, align 4
  %170 = call i32 @get_transaction_dir(%struct.TYPE_16__* %168, i32 %169)
  %171 = load i32, i32* @transaction_dir, align 4
  %172 = call i32 (i32, i8*, ...) @vkprintf(i32 3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 %171)
  %173 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %174 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = sext i32 %175 to i64
  %177 = load i64, i64* @ts_unset, align 8
  %178 = icmp ne i64 %176, %177
  br i1 %178, label %179, label %185

179:                                              ; preds = %167
  %180 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %181 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = call i32 (i32, i8*, ...) @vkprintf(i32 3, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.6, i64 0, i64 0), i32 %182)
  %184 = call i32 (...) @delete_transaction_dir()
  br label %185

185:                                              ; preds = %179, %167
  %186 = load i32, i32* @transaction_dir, align 4
  %187 = call i64 @mkdir(i32 %186, i32 448)
  %188 = icmp slt i64 %187, 0
  br i1 %188, label %189, label %198

189:                                              ; preds = %185
  %190 = load i32, i32* @transaction_dir, align 4
  %191 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i32 %190)
  %192 = call i32 (...) @handle_failure()
  %193 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %194 = load i32, i32* @COPYEXEC_ERR_MKDIR, align 4
  %195 = call i32 @alloc_io_failed_logevent(%struct.TYPE_16__* %193, i32 %194)
  %196 = load i8*, i8** %4, align 8
  %197 = call i32 @free(i8* %196)
  br label %568

198:                                              ; preds = %185
  %199 = load i32, i32* @transaction_dir, align 4
  %200 = call i64 @chdir(i32 %199)
  %201 = icmp slt i64 %200, 0
  br i1 %201, label %202, label %212

202:                                              ; preds = %198
  %203 = load i32, i32* @transaction_dir, align 4
  %204 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i32 %203)
  %205 = call i32 (...) @handle_failure()
  %206 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %207 = load i32, i32* @COPYEXEC_ERR_CHDIR, align 4
  %208 = call i32 @alloc_io_failed_logevent(%struct.TYPE_16__* %206, i32 %207)
  %209 = call i32 (...) @delete_transaction_dir()
  %210 = load i8*, i8** %4, align 8
  %211 = call i32 @free(i8* %210)
  br label %568

212:                                              ; preds = %198
  %213 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %214 = load i32, i32* @cur_transaction_binlog_name, align 4
  %215 = call i32 @get_transaction_binlog_name(%struct.TYPE_16__* %213, i32 %214)
  %216 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %217 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %216, i32 0, i32 3
  %218 = load i64, i64* %217, align 8
  %219 = load i32, i32* @cur_transaction_binlog_name, align 4
  %220 = call i32 (i32, i8*, ...) @vkprintf(i32 3, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0), i64 %218, i32 %219)
  br label %221

221:                                              ; preds = %212, %237
  %222 = load i32, i32* @cur_transaction_binlog_name, align 4
  %223 = load i32, i32* @O_WRONLY, align 4
  %224 = load i32, i32* @O_CREAT, align 4
  %225 = or i32 %223, %224
  %226 = load i32, i32* @O_TRUNC, align 4
  %227 = or i32 %225, %226
  %228 = load i32, i32* @O_EXCL, align 4
  %229 = or i32 %227, %228
  %230 = call i64 @open(i32 %222, i32 %229, i32 256)
  store i64 %230, i64* @fd_transaction_logevents, align 8
  %231 = load i64, i64* @fd_transaction_logevents, align 8
  %232 = icmp slt i64 %231, 0
  br i1 %232, label %233, label %238

233:                                              ; preds = %221
  %234 = load i64, i64* @errno, align 8
  %235 = load i64, i64* @EINTR, align 8
  %236 = icmp eq i64 %234, %235
  br i1 %236, label %237, label %238

237:                                              ; preds = %233
  br label %221

238:                                              ; preds = %233, %221
  br label %239

239:                                              ; preds = %238
  %240 = load i64, i64* @fd_transaction_logevents, align 8
  %241 = icmp slt i64 %240, 0
  br i1 %241, label %242, label %252

242:                                              ; preds = %239
  %243 = load i32, i32* @cur_transaction_binlog_name, align 4
  %244 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0), i32 %243)
  %245 = call i32 (...) @handle_failure()
  %246 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %247 = load i32, i32* @COPYEXEC_ERR_CREAT, align 4
  %248 = call i32 @alloc_io_failed_logevent(%struct.TYPE_16__* %246, i32 %247)
  %249 = call i32 (...) @delete_transaction_dir()
  %250 = load i8*, i8** %4, align 8
  %251 = call i32 @free(i8* %250)
  br label %568

252:                                              ; preds = %239
  %253 = load i64, i64* @fd_transaction_logevents, align 8
  %254 = call i64 @fstat(i64 %253, %struct.stat* %10)
  %255 = icmp slt i64 %254, 0
  br i1 %255, label %256, label %266

256:                                              ; preds = %252
  %257 = load i32, i32* @cur_transaction_binlog_name, align 4
  %258 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0), i32 %257)
  %259 = call i32 (...) @handle_failure()
  %260 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %261 = load i32, i32* @COPYEXEC_ERR_FSTAT, align 4
  %262 = call i32 @alloc_io_failed_logevent(%struct.TYPE_16__* %260, i32 %261)
  %263 = call i32 (...) @delete_transaction_dir()
  %264 = load i8*, i8** %4, align 8
  %265 = call i32 @free(i8* %264)
  br label %568

266:                                              ; preds = %252
  %267 = call i32 @sigemptyset(i32* %11)
  %268 = load i32, i32* @SIGINT, align 4
  %269 = call i32 @sigaddset(i32* %11, i32 %268)
  %270 = load i32, i32* @SIGTERM, align 4
  %271 = call i32 @sigaddset(i32* %11, i32 %270)
  %272 = load i32, i32* @copyexec_transaction_process_sigint_handler, align 4
  %273 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %12, i32 0, i32 2
  store i32 %272, i32* %273, align 4
  %274 = load i32, i32* %11, align 4
  %275 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %12, i32 0, i32 1
  store i32 %274, i32* %275, align 8
  %276 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %12, i32 0, i32 0
  store i64 0, i64* %276, align 8
  %277 = call i64 (...) @fork()
  store i64 %277, i64* %13, align 8
  %278 = load i64, i64* %13, align 8
  %279 = icmp slt i64 %278, 0
  br i1 %279, label %280, label %289

280:                                              ; preds = %266
  %281 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0))
  %282 = call i32 (...) @handle_failure()
  %283 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %284 = load i32, i32* @COPYEXEC_ERR_FORK, align 4
  %285 = call i32 @alloc_io_failed_logevent(%struct.TYPE_16__* %283, i32 %284)
  %286 = call i32 (...) @delete_transaction_dir()
  %287 = load i8*, i8** %4, align 8
  %288 = call i32 @free(i8* %287)
  br label %568

289:                                              ; preds = %266
  %290 = load i64, i64* %13, align 8
  %291 = icmp sgt i64 %290, 0
  br i1 %291, label %292, label %340

292:                                              ; preds = %289
  %293 = load i64, i64* %13, align 8
  %294 = call i8* @get_process_creation_time(i64 %293)
  %295 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %296 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %295, i32 0, i32 9
  store i8* %294, i8** %296, align 8
  %297 = load i8*, i8** %4, align 8
  %298 = call i32 @free(i8* %297)
  %299 = call i32 @fd_close(i64* @fd_transaction_logevents)
  %300 = load i64, i64* %13, align 8
  %301 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %302 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %301, i32 0, i32 8
  store i64 %300, i64* %302, align 8
  %303 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %304 = load i32, i32* @ts_running, align 4
  %305 = call i32 @transaction_change_status(%struct.TYPE_16__* %303, i32 %304)
  %306 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %307 = call i32 @tlist_insert(%struct.TYPE_16__* @child_running_list, %struct.TYPE_16__* %306)
  %308 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %309 = call %struct.lev_copyexec_main_transaction_status* @transaction_alloc_log_event_status(%struct.TYPE_16__* %308)
  store %struct.lev_copyexec_main_transaction_status* %309, %struct.lev_copyexec_main_transaction_status** %14, align 8
  %310 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %311 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %310, i32 0, i32 6
  %312 = load i32, i32* %311, align 8
  %313 = load %struct.lev_copyexec_main_transaction_status*, %struct.lev_copyexec_main_transaction_status** %14, align 8
  %314 = getelementptr inbounds %struct.lev_copyexec_main_transaction_status, %struct.lev_copyexec_main_transaction_status* %313, i32 0, i32 7
  store i32 %312, i32* %314, align 8
  %315 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %316 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %315, i32 0, i32 2
  %317 = load i32, i32* %316, align 8
  %318 = load %struct.lev_copyexec_main_transaction_status*, %struct.lev_copyexec_main_transaction_status** %14, align 8
  %319 = getelementptr inbounds %struct.lev_copyexec_main_transaction_status, %struct.lev_copyexec_main_transaction_status* %318, i32 0, i32 1
  store i32 %317, i32* %319, align 4
  %320 = load i64, i64* %13, align 8
  %321 = load %struct.lev_copyexec_main_transaction_status*, %struct.lev_copyexec_main_transaction_status** %14, align 8
  %322 = getelementptr inbounds %struct.lev_copyexec_main_transaction_status, %struct.lev_copyexec_main_transaction_status* %321, i32 0, i32 2
  store i64 %320, i64* %322, align 8
  %323 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %324 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %323, i32 0, i32 9
  %325 = load i8*, i8** %324, align 8
  %326 = load %struct.lev_copyexec_main_transaction_status*, %struct.lev_copyexec_main_transaction_status** %14, align 8
  %327 = getelementptr inbounds %struct.lev_copyexec_main_transaction_status, %struct.lev_copyexec_main_transaction_status* %326, i32 0, i32 6
  store i8* %325, i8** %327, align 8
  %328 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 1
  %329 = load i64, i64* %328, align 8
  %330 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %331 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %330, i32 0, i32 4
  store i64 %329, i64* %331, align 8
  %332 = load %struct.lev_copyexec_main_transaction_status*, %struct.lev_copyexec_main_transaction_status** %14, align 8
  %333 = getelementptr inbounds %struct.lev_copyexec_main_transaction_status, %struct.lev_copyexec_main_transaction_status* %332, i32 0, i32 3
  store i64 %329, i64* %333, align 8
  %334 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 0
  %335 = load i64, i64* %334, align 8
  %336 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %337 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %336, i32 0, i32 5
  store i64 %335, i64* %337, align 8
  %338 = load %struct.lev_copyexec_main_transaction_status*, %struct.lev_copyexec_main_transaction_status** %14, align 8
  %339 = getelementptr inbounds %struct.lev_copyexec_main_transaction_status, %struct.lev_copyexec_main_transaction_status* %338, i32 0, i32 4
  store i64 %335, i64* %339, align 8
  br label %568

340:                                              ; preds = %289
  %341 = load i32, i32* @SIGINT, align 4
  %342 = call i32 @sigaction(i32 %341, %struct.sigaction* %12, i32* null)
  %343 = icmp ne i32 %342, 0
  %344 = xor i1 %343, true
  %345 = zext i1 %344 to i32
  %346 = call i32 @assert(i32 %345)
  %347 = load i32, i32* @SIGTERM, align 4
  %348 = call i32 @sigaction(i32 %347, %struct.sigaction* %12, i32* null)
  %349 = icmp ne i32 %348, 0
  %350 = xor i1 %349, true
  %351 = zext i1 %350 to i32
  %352 = call i32 @assert(i32 %351)
  %353 = call i32 (...) @set_sigusr1_handler()
  %354 = load i64, i64* @sigterm_receiver_pid, align 8
  %355 = call i64 (...) @getpid()
  %356 = icmp eq i64 %354, %355
  br i1 %356, label %357, label %362

357:                                              ; preds = %340
  %358 = load i32, i32* @transaction_interrupting_signal, align 4
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %362, label %360

360:                                              ; preds = %357
  %361 = load i32, i32* @SIGTERM, align 4
  store i32 %361, i32* @transaction_interrupting_signal, align 4
  br label %362

362:                                              ; preds = %360, %357, %340
  %363 = call i32 (...) @setsid()
  %364 = load i32, i32* @Binlog, align 4
  %365 = call i32 @close_binlog(i32 %364, i32 1)
  %366 = call i32 @fd_close(i64* @fd_aux_binlog)
  %367 = call i32 @fd_close(i64* @epoll_fd)
  %368 = load i64, i64* @sfd, align 8
  %369 = icmp ne i64 %368, 0
  br i1 %369, label %370, label %372

370:                                              ; preds = %362
  %371 = call i32 @fd_close(i64* @sfd)
  br label %372

372:                                              ; preds = %370, %362
  %373 = load i64, i64* @fd_transaction_logevents, align 8
  %374 = call i32 @close_unused_fd(i64 %373)
  %375 = call i64 (...) @getpid()
  %376 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %377 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %376, i32 0, i32 8
  store i64 %375, i64* %377, align 8
  %378 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %379 = load i32, i32* @cur_transaction_hash, align 4
  %380 = call i32 @get_transaction_hash(%struct.TYPE_16__* %378, i32 %379)
  store i64 0, i64* @cmd_id, align 8
  %381 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %382 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %381, i32 0, i32 0
  %383 = load i64, i64* %382, align 8
  store i64 %383, i64* @cur_transaction_id, align 8
  %384 = load i64, i64* @cur_transaction_id, align 8
  %385 = call i32 @transaction_change_process_name(i64 %384)
  %386 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %387 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %386, i32 0, i32 2
  %388 = load i32, i32* %387, align 8
  %389 = load i32, i32* @MASK_WAITING_TRANSACTION, align 4
  %390 = and i32 %388, %389
  %391 = icmp ne i32 %390, 0
  br i1 %391, label %392, label %435

392:                                              ; preds = %372
  %393 = load %struct.TYPE_16__*, %struct.TYPE_16__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @auto_running_list, i32 0, i32 7), align 8
  store %struct.TYPE_16__* %393, %struct.TYPE_16__** %15, align 8
  br label %394

394:                                              ; preds = %409, %392
  %395 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %396 = icmp ne %struct.TYPE_16__* %395, @auto_running_list
  br i1 %396, label %397, label %413

397:                                              ; preds = %394
  %398 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %399 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %398, i32 0, i32 3
  %400 = load i64, i64* %399, align 8
  %401 = load i64, i64* @cur_transaction_id, align 8
  %402 = icmp slt i64 %400, %401
  br i1 %402, label %403, label %408

403:                                              ; preds = %397
  %404 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %405 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %404, i32 0, i32 3
  %406 = load i64, i64* %405, align 8
  %407 = call i32 @do_wait(i64 %406)
  br label %408

408:                                              ; preds = %403, %397
  br label %409

409:                                              ; preds = %408
  %410 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %411 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %410, i32 0, i32 7
  %412 = load %struct.TYPE_16__*, %struct.TYPE_16__** %411, align 8
  store %struct.TYPE_16__* %412, %struct.TYPE_16__** %15, align 8
  br label %394

413:                                              ; preds = %394
  %414 = load %struct.TYPE_16__*, %struct.TYPE_16__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @child_running_list, i32 0, i32 7), align 8
  store %struct.TYPE_16__* %414, %struct.TYPE_16__** %15, align 8
  br label %415

415:                                              ; preds = %430, %413
  %416 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %417 = icmp ne %struct.TYPE_16__* %416, @child_running_list
  br i1 %417, label %418, label %434

418:                                              ; preds = %415
  %419 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %420 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %419, i32 0, i32 3
  %421 = load i64, i64* %420, align 8
  %422 = load i64, i64* @cur_transaction_id, align 8
  %423 = icmp slt i64 %421, %422
  br i1 %423, label %424, label %429

424:                                              ; preds = %418
  %425 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %426 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %425, i32 0, i32 3
  %427 = load i64, i64* %426, align 8
  %428 = call i32 @do_wait(i64 %427)
  br label %429

429:                                              ; preds = %424, %418
  br label %430

430:                                              ; preds = %429
  %431 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %432 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %431, i32 0, i32 7
  %433 = load %struct.TYPE_16__*, %struct.TYPE_16__** %432, align 8
  store %struct.TYPE_16__* %433, %struct.TYPE_16__** %15, align 8
  br label %415

434:                                              ; preds = %415
  br label %435

435:                                              ; preds = %434, %372
  %436 = load i8*, i8** %4, align 8
  %437 = load i32, i32* %5, align 4
  %438 = sext i32 %437 to i64
  %439 = getelementptr inbounds i8, i8* %436, i64 %438
  %440 = getelementptr inbounds i8, i8* %439, i64 -20
  store i8* %440, i8** %16, align 8
  %441 = load i8*, i8** %4, align 8
  %442 = getelementptr inbounds i8, i8* %441, i64 4
  store i8* %442, i8** %17, align 8
  store i32 0, i32* %18, align 4
  br label %443

443:                                              ; preds = %471, %435
  %444 = load i8*, i8** %17, align 8
  %445 = load i8*, i8** %16, align 8
  %446 = icmp ult i8* %444, %445
  br i1 %446, label %447, label %451

447:                                              ; preds = %443
  %448 = load i32, i32* @transaction_interrupting_signal, align 4
  %449 = icmp ne i32 %448, 0
  %450 = xor i1 %449, true
  br label %451

451:                                              ; preds = %447, %443
  %452 = phi i1 [ false, %443 ], [ %450, %447 ]
  br i1 %452, label %453, label %479

453:                                              ; preds = %451
  %454 = call i64 (...) @interrupted_by_cancelled()
  %455 = icmp ne i64 %454, 0
  br i1 %455, label %456, label %458

456:                                              ; preds = %453
  %457 = load i32, i32* @SIGUSR2, align 4
  store i32 %457, i32* @transaction_interrupting_signal, align 4
  br label %479

458:                                              ; preds = %453
  %459 = load i8*, i8** %17, align 8
  %460 = load i8*, i8** %16, align 8
  %461 = load i8*, i8** %17, align 8
  %462 = ptrtoint i8* %460 to i64
  %463 = ptrtoint i8* %461 to i64
  %464 = sub i64 %462, %463
  %465 = trunc i64 %464 to i32
  %466 = call i32 @transaction_replay_logevent(i8* %459, i32 %465)
  store i32 %466, i32* %19, align 4
  %467 = load i32, i32* %19, align 4
  %468 = icmp slt i32 %467, 0
  br i1 %468, label %469, label %471

469:                                              ; preds = %458
  %470 = load i32, i32* %19, align 4
  store i32 %470, i32* %18, align 4
  br label %479

471:                                              ; preds = %458
  %472 = load i32, i32* %19, align 4
  %473 = add nsw i32 %472, 3
  %474 = and i32 %473, -4
  store i32 %474, i32* %19, align 4
  %475 = load i32, i32* %19, align 4
  %476 = load i8*, i8** %17, align 8
  %477 = sext i32 %475 to i64
  %478 = getelementptr i8, i8* %476, i64 %477
  store i8* %478, i8** %17, align 8
  br label %443

479:                                              ; preds = %469, %456, %451
  %480 = load i8*, i8** %4, align 8
  %481 = call i32 @free(i8* %480)
  %482 = load i32, i32* %18, align 4
  %483 = icmp slt i32 %482, 0
  br i1 %483, label %484, label %488

484:                                              ; preds = %479
  %485 = load i64, i64* @cur_transaction_id, align 8
  %486 = load i32, i32* %18, align 4
  %487 = call i32 (i32, i8*, ...) @vkprintf(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i64 0, i64 0), i64 %485, i32 %486)
  br label %488

488:                                              ; preds = %484, %479
  %489 = load i32, i32* @LEV_COPYEXEC_MAIN_TRANSACTION_STATUS, align 4
  store i32 %489, i32* %20, align 4
  %490 = load i32, i32* @transaction_interrupting_signal, align 4
  %491 = icmp ne i32 %490, 0
  br i1 %491, label %492, label %510

492:                                              ; preds = %488
  %493 = load i64, i64* @cmd_id, align 8
  %494 = icmp ne i64 %493, 0
  br i1 %494, label %495, label %501

495:                                              ; preds = %492
  %496 = load i64, i64* @ts_interrupted, align 8
  %497 = load i32, i32* %20, align 4
  %498 = sext i32 %497 to i64
  %499 = add nsw i64 %498, %496
  %500 = trunc i64 %499 to i32
  store i32 %500, i32* %20, align 4
  br label %509

501:                                              ; preds = %492
  %502 = load i64, i64* @ts_cancelled, align 8
  %503 = load i32, i32* %20, align 4
  %504 = sext i32 %503 to i64
  %505 = add nsw i64 %504, %502
  %506 = trunc i64 %505 to i32
  store i32 %506, i32* %20, align 4
  %507 = load i32, i32* @transaction_interrupting_signal, align 4
  %508 = shl i32 %507, 8
  store i32 %508, i32* @cur_transaction_result, align 4
  br label %509

509:                                              ; preds = %501, %495
  br label %523

510:                                              ; preds = %488
  %511 = load i32, i32* %18, align 4
  %512 = icmp slt i32 %511, 0
  br i1 %512, label %513, label %515

513:                                              ; preds = %510
  %514 = load i64, i64* @ts_failed, align 8
  br label %517

515:                                              ; preds = %510
  %516 = load i64, i64* @ts_terminated, align 8
  br label %517

517:                                              ; preds = %515, %513
  %518 = phi i64 [ %514, %513 ], [ %516, %515 ]
  %519 = load i32, i32* %20, align 4
  %520 = sext i32 %519 to i64
  %521 = add nsw i64 %520, %518
  %522 = trunc i64 %521 to i32
  store i32 %522, i32* %20, align 4
  br label %523

523:                                              ; preds = %517, %509
  %524 = load i32, i32* %20, align 4
  %525 = call %struct.lev_copyexec_main_transaction_status* @alloc_buffered_logevent(%struct.buffered_logevent* %21, i32 %524, i32 56)
  store %struct.lev_copyexec_main_transaction_status* %525, %struct.lev_copyexec_main_transaction_status** %22, align 8
  %526 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %527 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %526, i32 0, i32 3
  %528 = load i64, i64* %527, align 8
  %529 = load %struct.lev_copyexec_main_transaction_status*, %struct.lev_copyexec_main_transaction_status** %22, align 8
  %530 = getelementptr inbounds %struct.lev_copyexec_main_transaction_status, %struct.lev_copyexec_main_transaction_status* %529, i32 0, i32 5
  store i64 %528, i64* %530, align 8
  %531 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %532 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %531, i32 0, i32 6
  %533 = load i32, i32* %532, align 8
  %534 = load %struct.lev_copyexec_main_transaction_status*, %struct.lev_copyexec_main_transaction_status** %22, align 8
  %535 = getelementptr inbounds %struct.lev_copyexec_main_transaction_status, %struct.lev_copyexec_main_transaction_status* %534, i32 0, i32 7
  store i32 %533, i32* %535, align 8
  %536 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %537 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %536, i32 0, i32 2
  %538 = load i32, i32* %537, align 8
  %539 = load %struct.lev_copyexec_main_transaction_status*, %struct.lev_copyexec_main_transaction_status** %22, align 8
  %540 = getelementptr inbounds %struct.lev_copyexec_main_transaction_status, %struct.lev_copyexec_main_transaction_status* %539, i32 0, i32 1
  store i32 %538, i32* %540, align 4
  %541 = call i64 (...) @getpid()
  %542 = load %struct.lev_copyexec_main_transaction_status*, %struct.lev_copyexec_main_transaction_status** %22, align 8
  %543 = getelementptr inbounds %struct.lev_copyexec_main_transaction_status, %struct.lev_copyexec_main_transaction_status* %542, i32 0, i32 2
  store i64 %541, i64* %543, align 8
  %544 = load %struct.lev_copyexec_main_transaction_status*, %struct.lev_copyexec_main_transaction_status** %22, align 8
  %545 = getelementptr inbounds %struct.lev_copyexec_main_transaction_status, %struct.lev_copyexec_main_transaction_status* %544, i32 0, i32 2
  %546 = load i64, i64* %545, align 8
  %547 = call i8* @get_process_creation_time(i64 %546)
  %548 = load %struct.lev_copyexec_main_transaction_status*, %struct.lev_copyexec_main_transaction_status** %22, align 8
  %549 = getelementptr inbounds %struct.lev_copyexec_main_transaction_status, %struct.lev_copyexec_main_transaction_status* %548, i32 0, i32 6
  store i8* %547, i8** %549, align 8
  %550 = load i32, i32* @cur_transaction_result, align 4
  %551 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %552 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %551, i32 0, i32 1
  store i32 %550, i32* %552, align 4
  %553 = load %struct.lev_copyexec_main_transaction_status*, %struct.lev_copyexec_main_transaction_status** %22, align 8
  %554 = getelementptr inbounds %struct.lev_copyexec_main_transaction_status, %struct.lev_copyexec_main_transaction_status* %553, i32 0, i32 0
  store i32 %550, i32* %554, align 8
  %555 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 1
  %556 = load i64, i64* %555, align 8
  %557 = load %struct.lev_copyexec_main_transaction_status*, %struct.lev_copyexec_main_transaction_status** %22, align 8
  %558 = getelementptr inbounds %struct.lev_copyexec_main_transaction_status, %struct.lev_copyexec_main_transaction_status* %557, i32 0, i32 3
  store i64 %556, i64* %558, align 8
  %559 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 0
  %560 = load i64, i64* %559, align 8
  %561 = load %struct.lev_copyexec_main_transaction_status*, %struct.lev_copyexec_main_transaction_status** %22, align 8
  %562 = getelementptr inbounds %struct.lev_copyexec_main_transaction_status, %struct.lev_copyexec_main_transaction_status* %561, i32 0, i32 4
  store i64 %560, i64* %562, align 8
  %563 = call i32 @flush_logevent_to_file(%struct.buffered_logevent* %21)
  %564 = load i64, i64* @fd_transaction_logevents, align 8
  %565 = call i32 @fsync(i64 %564)
  %566 = call i32 @fd_close(i64* @fd_transaction_logevents)
  %567 = call i32 @exit(i32 0) #3
  unreachable

568:                                              ; preds = %292, %280, %256, %242, %202, %189, %149, %99, %49, %28
  ret void
}

declare dso_local i32 @vkprintf(i32, i8*, ...) #1

declare dso_local %struct.TYPE_16__* @get_transaction_f(i64, i32) #1

declare dso_local i32 @transaction_want_exec(%struct.TYPE_16__*) #1

declare dso_local i32 @copyexec_abort(...) #1

declare dso_local i32 @decrypt_transaction(i32, i32, i32, i32, i64, i8**, i32*) #1

declare dso_local i32 @kprintf(i8*, ...) #1

declare dso_local i32 @copyexec_strerror(i32) #1

declare dso_local i32 @handle_failure(...) #1

declare dso_local i32 @transaction_change_status(%struct.TYPE_16__*, i32) #1

declare dso_local %struct.lev_copyexec_main_transaction_status* @transaction_alloc_log_event_status(%struct.TYPE_16__*) #1

declare dso_local i64 @synchronization_point_transaction(i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @get_transaction_dir(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @delete_transaction_dir(...) #1

declare dso_local i64 @mkdir(i32, i32) #1

declare dso_local i32 @alloc_io_failed_logevent(%struct.TYPE_16__*, i32) #1

declare dso_local i64 @chdir(i32) #1

declare dso_local i32 @get_transaction_binlog_name(%struct.TYPE_16__*, i32) #1

declare dso_local i64 @open(i32, i32, i32) #1

declare dso_local i64 @fstat(i64, %struct.stat*) #1

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i32 @sigaddset(i32*, i32) #1

declare dso_local i64 @fork(...) #1

declare dso_local i8* @get_process_creation_time(i64) #1

declare dso_local i32 @fd_close(i64*) #1

declare dso_local i32 @tlist_insert(%struct.TYPE_16__*, %struct.TYPE_16__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sigaction(i32, %struct.sigaction*, i32*) #1

declare dso_local i32 @set_sigusr1_handler(...) #1

declare dso_local i64 @getpid(...) #1

declare dso_local i32 @setsid(...) #1

declare dso_local i32 @close_binlog(i32, i32) #1

declare dso_local i32 @close_unused_fd(i64) #1

declare dso_local i32 @get_transaction_hash(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @transaction_change_process_name(i64) #1

declare dso_local i32 @do_wait(i64) #1

declare dso_local i64 @interrupted_by_cancelled(...) #1

declare dso_local i32 @transaction_replay_logevent(i8*, i32) #1

declare dso_local %struct.lev_copyexec_main_transaction_status* @alloc_buffered_logevent(%struct.buffered_logevent*, i32, i32) #1

declare dso_local i32 @flush_logevent_to_file(%struct.buffered_logevent*) #1

declare dso_local i32 @fsync(i64) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
