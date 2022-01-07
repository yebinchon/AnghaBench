; ModuleID = '/home/carl/AnghaBench/kphp-kdb/util/extr_replicator.c_process_handshake_ok_packet.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/util/extr_replicator.c_process_handshake_ok_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }
%struct.repl_handshake_ok = type { i64, i64, i64, i64, i64, i32 }
%struct.repl_client_status = type { i32, i64, %struct.related_binlog* }
%struct.related_binlog = type { i64, i64, i64 }

@.str = private unnamed_addr constant [118 x i8] c"received handshake acknowledgement packet from %s:%d, session %d:%d, current slice %lld..%lld, last slice %lld..%lld\0A\00", align 1
@R_ERROR_EBADFD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"unknown handshake id\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"handshake already complete for this id\00", align 1
@R_ERROR_EBADSLICE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"invalid binlog start/end positions\00", align 1
@.str.4 = private unnamed_addr constant [74 x i8] c"binlog start/end positions mismatch: client %lld..%lld, server %lld..%lld\00", align 1
@RC_UPTODATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_handshake_ok_packet(%struct.connection* %0, %struct.repl_handshake_ok* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.connection*, align 8
  %5 = alloca %struct.repl_handshake_ok*, align 8
  %6 = alloca %struct.repl_client_status*, align 8
  %7 = alloca %struct.related_binlog*, align 8
  store %struct.connection* %0, %struct.connection** %4, align 8
  store %struct.repl_handshake_ok* %1, %struct.repl_handshake_ok** %5, align 8
  %8 = load %struct.repl_handshake_ok*, %struct.repl_handshake_ok** %5, align 8
  %9 = getelementptr inbounds %struct.repl_handshake_ok, %struct.repl_handshake_ok* %8, i32 0, i32 5
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.repl_client_status* @get_client_by_handshake(i32 %10, i32 0)
  store %struct.repl_client_status* %11, %struct.repl_client_status** %6, align 8
  %12 = load %struct.connection*, %struct.connection** %4, align 8
  %13 = call i32 @show_remote_ip(%struct.connection* %12)
  %14 = load %struct.connection*, %struct.connection** %4, align 8
  %15 = getelementptr inbounds %struct.connection, %struct.connection* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.repl_handshake_ok*, %struct.repl_handshake_ok** %5, align 8
  %18 = getelementptr inbounds %struct.repl_handshake_ok, %struct.repl_handshake_ok* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.repl_handshake_ok*, %struct.repl_handshake_ok** %5, align 8
  %21 = getelementptr inbounds %struct.repl_handshake_ok, %struct.repl_handshake_ok* %20, i32 0, i32 4
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.repl_handshake_ok*, %struct.repl_handshake_ok** %5, align 8
  %24 = getelementptr inbounds %struct.repl_handshake_ok, %struct.repl_handshake_ok* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.repl_handshake_ok*, %struct.repl_handshake_ok** %5, align 8
  %27 = getelementptr inbounds %struct.repl_handshake_ok, %struct.repl_handshake_ok* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.repl_handshake_ok*, %struct.repl_handshake_ok** %5, align 8
  %30 = getelementptr inbounds %struct.repl_handshake_ok, %struct.repl_handshake_ok* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.repl_handshake_ok*, %struct.repl_handshake_ok** %5, align 8
  %33 = getelementptr inbounds %struct.repl_handshake_ok, %struct.repl_handshake_ok* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @vkprintf(i32 2, i8* getelementptr inbounds ([118 x i8], [118 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %16, i32 %19, i64 %22, i64 %25, i64 %28, i64 %31, i64 %34)
  %36 = load %struct.repl_client_status*, %struct.repl_client_status** %6, align 8
  %37 = icmp ne %struct.repl_client_status* %36, null
  br i1 %37, label %48, label %38

38:                                               ; preds = %2
  %39 = load %struct.connection*, %struct.connection** %4, align 8
  %40 = load %struct.repl_handshake_ok*, %struct.repl_handshake_ok** %5, align 8
  %41 = getelementptr inbounds %struct.repl_handshake_ok, %struct.repl_handshake_ok* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.repl_handshake_ok*, %struct.repl_handshake_ok** %5, align 8
  %44 = getelementptr inbounds %struct.repl_handshake_ok, %struct.repl_handshake_ok* %43, i32 0, i32 4
  %45 = load i64, i64* %44, align 8
  %46 = load i32, i32* @R_ERROR_EBADFD, align 4
  %47 = call i32 (%struct.connection*, i32, i64, i32, i8*, ...) @send_error(%struct.connection* %39, i32 %42, i64 %45, i32 %46, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  store i32 %47, i32* %3, align 4
  br label %237

48:                                               ; preds = %2
  %49 = load %struct.repl_client_status*, %struct.repl_client_status** %6, align 8
  %50 = getelementptr inbounds %struct.repl_client_status, %struct.repl_client_status* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %48
  %54 = load %struct.connection*, %struct.connection** %4, align 8
  %55 = load %struct.repl_handshake_ok*, %struct.repl_handshake_ok** %5, align 8
  %56 = getelementptr inbounds %struct.repl_handshake_ok, %struct.repl_handshake_ok* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.repl_handshake_ok*, %struct.repl_handshake_ok** %5, align 8
  %59 = getelementptr inbounds %struct.repl_handshake_ok, %struct.repl_handshake_ok* %58, i32 0, i32 4
  %60 = load i64, i64* %59, align 8
  %61 = load i32, i32* @R_ERROR_EBADFD, align 4
  %62 = call i32 (%struct.connection*, i32, i64, i32, i8*, ...) @send_error(%struct.connection* %54, i32 %57, i64 %60, i32 %61, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  store i32 %62, i32* %3, align 4
  br label %237

63:                                               ; preds = %48
  %64 = load %struct.repl_client_status*, %struct.repl_client_status** %6, align 8
  %65 = getelementptr inbounds %struct.repl_client_status, %struct.repl_client_status* %64, i32 0, i32 2
  %66 = load %struct.related_binlog*, %struct.related_binlog** %65, align 8
  store %struct.related_binlog* %66, %struct.related_binlog** %7, align 8
  %67 = load %struct.repl_handshake_ok*, %struct.repl_handshake_ok** %5, align 8
  %68 = getelementptr inbounds %struct.repl_handshake_ok, %struct.repl_handshake_ok* %67, i32 0, i32 4
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.repl_client_status*, %struct.repl_client_status** %6, align 8
  %71 = getelementptr inbounds %struct.repl_client_status, %struct.repl_client_status* %70, i32 0, i32 1
  store i64 %69, i64* %71, align 8
  %72 = load %struct.repl_handshake_ok*, %struct.repl_handshake_ok** %5, align 8
  %73 = getelementptr inbounds %struct.repl_handshake_ok, %struct.repl_handshake_ok* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.repl_handshake_ok*, %struct.repl_handshake_ok** %5, align 8
  %76 = getelementptr inbounds %struct.repl_handshake_ok, %struct.repl_handshake_ok* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp sgt i64 %74, %77
  br i1 %78, label %129, label %79

79:                                               ; preds = %63
  %80 = load %struct.repl_handshake_ok*, %struct.repl_handshake_ok** %5, align 8
  %81 = getelementptr inbounds %struct.repl_handshake_ok, %struct.repl_handshake_ok* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.repl_handshake_ok*, %struct.repl_handshake_ok** %5, align 8
  %84 = getelementptr inbounds %struct.repl_handshake_ok, %struct.repl_handshake_ok* %83, i32 0, i32 3
  %85 = load i64, i64* %84, align 8
  %86 = icmp sgt i64 %82, %85
  br i1 %86, label %129, label %87

87:                                               ; preds = %79
  %88 = load %struct.repl_handshake_ok*, %struct.repl_handshake_ok** %5, align 8
  %89 = getelementptr inbounds %struct.repl_handshake_ok, %struct.repl_handshake_ok* %88, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.repl_handshake_ok*, %struct.repl_handshake_ok** %5, align 8
  %92 = getelementptr inbounds %struct.repl_handshake_ok, %struct.repl_handshake_ok* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = icmp slt i64 %90, %93
  br i1 %94, label %129, label %95

95:                                               ; preds = %87
  %96 = load %struct.repl_handshake_ok*, %struct.repl_handshake_ok** %5, align 8
  %97 = getelementptr inbounds %struct.repl_handshake_ok, %struct.repl_handshake_ok* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.repl_handshake_ok*, %struct.repl_handshake_ok** %5, align 8
  %100 = getelementptr inbounds %struct.repl_handshake_ok, %struct.repl_handshake_ok* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp slt i64 %98, %101
  br i1 %102, label %129, label %103

103:                                              ; preds = %95
  %104 = load %struct.repl_handshake_ok*, %struct.repl_handshake_ok** %5, align 8
  %105 = getelementptr inbounds %struct.repl_handshake_ok, %struct.repl_handshake_ok* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp slt i64 %106, 0
  br i1 %107, label %129, label %108

108:                                              ; preds = %103
  %109 = load %struct.repl_handshake_ok*, %struct.repl_handshake_ok** %5, align 8
  %110 = getelementptr inbounds %struct.repl_handshake_ok, %struct.repl_handshake_ok* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = icmp slt i64 %111, 0
  br i1 %112, label %129, label %113

113:                                              ; preds = %108
  %114 = load %struct.repl_handshake_ok*, %struct.repl_handshake_ok** %5, align 8
  %115 = getelementptr inbounds %struct.repl_handshake_ok, %struct.repl_handshake_ok* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.repl_handshake_ok*, %struct.repl_handshake_ok** %5, align 8
  %118 = getelementptr inbounds %struct.repl_handshake_ok, %struct.repl_handshake_ok* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = icmp sgt i64 %116, %119
  br i1 %120, label %121, label %141

121:                                              ; preds = %113
  %122 = load %struct.repl_handshake_ok*, %struct.repl_handshake_ok** %5, align 8
  %123 = getelementptr inbounds %struct.repl_handshake_ok, %struct.repl_handshake_ok* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.repl_handshake_ok*, %struct.repl_handshake_ok** %5, align 8
  %126 = getelementptr inbounds %struct.repl_handshake_ok, %struct.repl_handshake_ok* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = icmp slt i64 %124, %127
  br i1 %128, label %129, label %141

129:                                              ; preds = %121, %108, %103, %95, %87, %79, %63
  %130 = load %struct.repl_client_status*, %struct.repl_client_status** %6, align 8
  %131 = call i32 @destroy_client(%struct.repl_client_status* %130)
  %132 = load %struct.connection*, %struct.connection** %4, align 8
  %133 = load %struct.repl_handshake_ok*, %struct.repl_handshake_ok** %5, align 8
  %134 = getelementptr inbounds %struct.repl_handshake_ok, %struct.repl_handshake_ok* %133, i32 0, i32 5
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.repl_handshake_ok*, %struct.repl_handshake_ok** %5, align 8
  %137 = getelementptr inbounds %struct.repl_handshake_ok, %struct.repl_handshake_ok* %136, i32 0, i32 4
  %138 = load i64, i64* %137, align 8
  %139 = load i32, i32* @R_ERROR_EBADSLICE, align 4
  %140 = call i32 (%struct.connection*, i32, i64, i32, i8*, ...) @send_error(%struct.connection* %132, i32 %135, i64 %138, i32 %139, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  store i32 %140, i32* %3, align 4
  br label %237

141:                                              ; preds = %121, %113
  %142 = load %struct.related_binlog*, %struct.related_binlog** %7, align 8
  %143 = getelementptr inbounds %struct.related_binlog, %struct.related_binlog* %142, i32 0, i32 2
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %201

146:                                              ; preds = %141
  %147 = load %struct.related_binlog*, %struct.related_binlog** %7, align 8
  %148 = getelementptr inbounds %struct.related_binlog, %struct.related_binlog* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load %struct.repl_handshake_ok*, %struct.repl_handshake_ok** %5, align 8
  %151 = getelementptr inbounds %struct.repl_handshake_ok, %struct.repl_handshake_ok* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %149, %152
  br i1 %153, label %162, label %154

154:                                              ; preds = %146
  %155 = load %struct.related_binlog*, %struct.related_binlog** %7, align 8
  %156 = getelementptr inbounds %struct.related_binlog, %struct.related_binlog* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = load %struct.repl_handshake_ok*, %struct.repl_handshake_ok** %5, align 8
  %159 = getelementptr inbounds %struct.repl_handshake_ok, %struct.repl_handshake_ok* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = icmp sgt i64 %157, %160
  br i1 %161, label %162, label %186

162:                                              ; preds = %154, %146
  %163 = load %struct.repl_client_status*, %struct.repl_client_status** %6, align 8
  %164 = call i32 @destroy_client(%struct.repl_client_status* %163)
  %165 = load %struct.connection*, %struct.connection** %4, align 8
  %166 = load %struct.repl_handshake_ok*, %struct.repl_handshake_ok** %5, align 8
  %167 = getelementptr inbounds %struct.repl_handshake_ok, %struct.repl_handshake_ok* %166, i32 0, i32 5
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.repl_handshake_ok*, %struct.repl_handshake_ok** %5, align 8
  %170 = getelementptr inbounds %struct.repl_handshake_ok, %struct.repl_handshake_ok* %169, i32 0, i32 4
  %171 = load i64, i64* %170, align 8
  %172 = load i32, i32* @R_ERROR_EBADSLICE, align 4
  %173 = load %struct.related_binlog*, %struct.related_binlog** %7, align 8
  %174 = getelementptr inbounds %struct.related_binlog, %struct.related_binlog* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = load %struct.related_binlog*, %struct.related_binlog** %7, align 8
  %177 = getelementptr inbounds %struct.related_binlog, %struct.related_binlog* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = load %struct.repl_handshake_ok*, %struct.repl_handshake_ok** %5, align 8
  %180 = getelementptr inbounds %struct.repl_handshake_ok, %struct.repl_handshake_ok* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = load %struct.repl_handshake_ok*, %struct.repl_handshake_ok** %5, align 8
  %183 = getelementptr inbounds %struct.repl_handshake_ok, %struct.repl_handshake_ok* %182, i32 0, i32 1
  %184 = load i64, i64* %183, align 8
  %185 = call i32 (%struct.connection*, i32, i64, i32, i8*, ...) @send_error(%struct.connection* %165, i32 %168, i64 %171, i32 %172, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.4, i64 0, i64 0), i64 %175, i64 %178, i64 %181, i64 %184)
  store i32 %185, i32* %3, align 4
  br label %237

186:                                              ; preds = %154
  %187 = load %struct.repl_handshake_ok*, %struct.repl_handshake_ok** %5, align 8
  %188 = getelementptr inbounds %struct.repl_handshake_ok, %struct.repl_handshake_ok* %187, i32 0, i32 3
  %189 = load i64, i64* %188, align 8
  %190 = load %struct.related_binlog*, %struct.related_binlog** %7, align 8
  %191 = getelementptr inbounds %struct.related_binlog, %struct.related_binlog* %190, i32 0, i32 1
  %192 = load i64, i64* %191, align 8
  %193 = icmp eq i64 %189, %192
  br i1 %193, label %194, label %200

194:                                              ; preds = %186
  %195 = load i32, i32* @RC_UPTODATE, align 4
  %196 = load %struct.repl_client_status*, %struct.repl_client_status** %6, align 8
  %197 = getelementptr inbounds %struct.repl_client_status, %struct.repl_client_status* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = or i32 %198, %195
  store i32 %199, i32* %197, align 8
  br label %200

200:                                              ; preds = %194, %186
  br label %236

201:                                              ; preds = %141
  %202 = load %struct.repl_handshake_ok*, %struct.repl_handshake_ok** %5, align 8
  %203 = getelementptr inbounds %struct.repl_handshake_ok, %struct.repl_handshake_ok* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %211, label %206

206:                                              ; preds = %201
  %207 = load %struct.repl_handshake_ok*, %struct.repl_handshake_ok** %5, align 8
  %208 = getelementptr inbounds %struct.repl_handshake_ok, %struct.repl_handshake_ok* %207, i32 0, i32 1
  %209 = load i64, i64* %208, align 8
  %210 = icmp slt i64 %209, 0
  br i1 %210, label %211, label %235

211:                                              ; preds = %206, %201
  %212 = load %struct.repl_client_status*, %struct.repl_client_status** %6, align 8
  %213 = call i32 @destroy_client(%struct.repl_client_status* %212)
  %214 = load %struct.connection*, %struct.connection** %4, align 8
  %215 = load %struct.repl_handshake_ok*, %struct.repl_handshake_ok** %5, align 8
  %216 = getelementptr inbounds %struct.repl_handshake_ok, %struct.repl_handshake_ok* %215, i32 0, i32 5
  %217 = load i32, i32* %216, align 8
  %218 = load %struct.repl_handshake_ok*, %struct.repl_handshake_ok** %5, align 8
  %219 = getelementptr inbounds %struct.repl_handshake_ok, %struct.repl_handshake_ok* %218, i32 0, i32 4
  %220 = load i64, i64* %219, align 8
  %221 = load i32, i32* @R_ERROR_EBADSLICE, align 4
  %222 = load %struct.related_binlog*, %struct.related_binlog** %7, align 8
  %223 = getelementptr inbounds %struct.related_binlog, %struct.related_binlog* %222, i32 0, i32 0
  %224 = load i64, i64* %223, align 8
  %225 = load %struct.related_binlog*, %struct.related_binlog** %7, align 8
  %226 = getelementptr inbounds %struct.related_binlog, %struct.related_binlog* %225, i32 0, i32 1
  %227 = load i64, i64* %226, align 8
  %228 = load %struct.repl_handshake_ok*, %struct.repl_handshake_ok** %5, align 8
  %229 = getelementptr inbounds %struct.repl_handshake_ok, %struct.repl_handshake_ok* %228, i32 0, i32 0
  %230 = load i64, i64* %229, align 8
  %231 = load %struct.repl_handshake_ok*, %struct.repl_handshake_ok** %5, align 8
  %232 = getelementptr inbounds %struct.repl_handshake_ok, %struct.repl_handshake_ok* %231, i32 0, i32 1
  %233 = load i64, i64* %232, align 8
  %234 = call i32 (%struct.connection*, i32, i64, i32, i8*, ...) @send_error(%struct.connection* %214, i32 %217, i64 %220, i32 %221, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.4, i64 0, i64 0), i64 %224, i64 %227, i64 %230, i64 %233)
  store i32 %234, i32* %3, align 4
  br label %237

235:                                              ; preds = %206
  br label %236

236:                                              ; preds = %235, %200
  store i32 0, i32* %3, align 4
  br label %237

237:                                              ; preds = %236, %211, %162, %129, %53, %38
  %238 = load i32, i32* %3, align 4
  ret i32 %238
}

declare dso_local %struct.repl_client_status* @get_client_by_handshake(i32, i32) #1

declare dso_local i32 @vkprintf(i32, i8*, i32, i32, i32, i64, i64, i64, i64, i64) #1

declare dso_local i32 @show_remote_ip(%struct.connection*) #1

declare dso_local i32 @send_error(%struct.connection*, i32, i64, i32, i8*, ...) #1

declare dso_local i32 @destroy_client(%struct.repl_client_status*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
