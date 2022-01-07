; ModuleID = '/home/carl/AnghaBench/lede/package/network/services/ead/src/extr_ead.c_handle_send_cmd.c'
source_filename = "/home/carl/AnghaBench/lede/package/network/services/ead/src/extr_ead.c_handle_send_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.ead_msg }
%struct.ead_msg = type { i32 }
%struct.ead_msg_cmd = type { i64*, i32, i32 }
%struct.ead_packet = type { %struct.ead_msg }
%struct.ead_msg_cmd_data = type { i32, i32 }
%struct.timeval = type { i32, i64 }

@F_SETFL = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@F_GETFL = common dso_local global i32 0, align 4
@child_pending = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"/dev/null\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@EAD_CMD_TIMEOUT = common dso_local global i32 0, align 4
@pktbuf = common dso_local global %struct.TYPE_2__* null, align 8
@cmd_data = common dso_local global i32 0, align 4
@PCAP_TIMEOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"Sending %d bytes of console data, type=%d, timeout=%d\0A\00", align 1
@SIGKILL = common dso_local global i32 0, align 4
@cmd = common dso_local global %struct.ead_msg_cmd* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ead_packet*, i32, i32*)* @handle_send_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_send_cmd(%struct.ead_packet* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ead_packet*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ead_msg*, align 8
  %9 = alloca %struct.ead_msg_cmd*, align 8
  %10 = alloca %struct.ead_msg_cmd_data*, align 8
  %11 = alloca %struct.timeval, align 8
  %12 = alloca %struct.timeval, align 8
  %13 = alloca %struct.timeval, align 8
  %14 = alloca [2 x i32], align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.ead_packet* %0, %struct.ead_packet** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %24 = load %struct.ead_packet*, %struct.ead_packet** %5, align 8
  %25 = getelementptr inbounds %struct.ead_packet, %struct.ead_packet* %24, i32 0, i32 0
  store %struct.ead_msg* %25, %struct.ead_msg** %8, align 8
  %26 = load %struct.ead_msg*, %struct.ead_msg** %8, align 8
  %27 = load %struct.ead_msg_cmd*, %struct.ead_msg_cmd** %9, align 8
  %28 = ptrtoint %struct.ead_msg_cmd* %27 to i32
  %29 = call i8* @EAD_ENC_DATA(%struct.ead_msg* %26, i32 %28)
  %30 = bitcast i8* %29 to %struct.ead_msg_cmd*
  store %struct.ead_msg_cmd* %30, %struct.ead_msg_cmd** %9, align 8
  store i32 0, i32* %18, align 4
  %31 = load %struct.ead_msg*, %struct.ead_msg** %8, align 8
  %32 = call i32 @ead_decrypt_message(%struct.ead_msg* %31)
  %33 = sext i32 %32 to i64
  %34 = sub i64 %33, 16
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %21, align 4
  %36 = load i32, i32* %21, align 4
  %37 = icmp sle i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %228

39:                                               ; preds = %3
  %40 = load %struct.ead_msg_cmd*, %struct.ead_msg_cmd** %9, align 8
  %41 = getelementptr inbounds %struct.ead_msg_cmd, %struct.ead_msg_cmd* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @ntohs(i32 %42)
  store i32 %43, i32* %20, align 4
  %44 = load %struct.ead_msg_cmd*, %struct.ead_msg_cmd** %9, align 8
  %45 = getelementptr inbounds %struct.ead_msg_cmd, %struct.ead_msg_cmd* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @ntohs(i32 %46)
  store i32 %47, i32* %19, align 4
  %48 = call i32 @FD_ZERO(i32* %16)
  %49 = load %struct.ead_msg_cmd*, %struct.ead_msg_cmd** %9, align 8
  %50 = getelementptr inbounds %struct.ead_msg_cmd, %struct.ead_msg_cmd* %49, i32 0, i32 0
  %51 = load i64*, i64** %50, align 8
  %52 = load i32, i32* %21, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i64, i64* %51, i64 %53
  store i64 0, i64* %54, align 8
  %55 = load i32, i32* %20, align 4
  switch i32 %55, label %142 [
    i32 128, label %56
    i32 129, label %113
  ]

56:                                               ; preds = %39
  %57 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %58 = call i32 @pipe(i32* %57)
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  store i32 0, i32* %4, align 4
  br label %228

61:                                               ; preds = %56
  %62 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @F_SETFL, align 4
  %65 = load i32, i32* @O_NONBLOCK, align 4
  %66 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @F_GETFL, align 4
  %69 = call i32 (i32, i32, ...) @fcntl(i32 %67, i32 %68)
  %70 = or i32 %65, %69
  %71 = call i32 (i32, i32, ...) @fcntl(i32 %63, i32 %64, i32 %70)
  store i32 1, i32* @child_pending, align 4
  %72 = call i32 (...) @fork()
  store i32 %72, i32* %17, align 4
  %73 = load i32, i32* %17, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %99

75:                                               ; preds = %61
  %76 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @close(i32 %77)
  %79 = load i32, i32* @O_RDWR, align 4
  %80 = call i32 @open(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %79)
  store i32 %80, i32* %15, align 4
  %81 = load i32, i32* %15, align 4
  %82 = icmp sgt i32 %81, 0
  br i1 %82, label %83, label %92

83:                                               ; preds = %75
  %84 = load i32, i32* %15, align 4
  %85 = call i32 @dup2(i32 %84, i32 0)
  %86 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @dup2(i32 %87, i32 1)
  %89 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @dup2(i32 %90, i32 2)
  br label %92

92:                                               ; preds = %83, %75
  %93 = load %struct.ead_msg_cmd*, %struct.ead_msg_cmd** %9, align 8
  %94 = getelementptr inbounds %struct.ead_msg_cmd, %struct.ead_msg_cmd* %93, i32 0, i32 0
  %95 = load i64*, i64** %94, align 8
  %96 = bitcast i64* %95 to i8*
  %97 = call i32 @system(i8* %96)
  %98 = call i32 @exit(i32 0) #3
  unreachable

99:                                               ; preds = %61
  %100 = load i32, i32* %17, align 4
  %101 = icmp sgt i32 %100, 0
  br i1 %101, label %102, label %111

102:                                              ; preds = %99
  %103 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 1
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @close(i32 %104)
  %106 = load i32, i32* %19, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %110, label %108

108:                                              ; preds = %102
  %109 = load i32, i32* @EAD_CMD_TIMEOUT, align 4
  store i32 %109, i32* %19, align 4
  br label %110

110:                                              ; preds = %108, %102
  store i32 1, i32* %18, align 4
  br label %143

111:                                              ; preds = %99
  br label %112

112:                                              ; preds = %111
  store i32 0, i32* %4, align 4
  br label %228

113:                                              ; preds = %39
  %114 = call i32 (...) @fork()
  store i32 %114, i32* %17, align 4
  %115 = load i32, i32* %17, align 4
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %136

117:                                              ; preds = %113
  %118 = load i32, i32* @O_RDWR, align 4
  %119 = call i32 @open(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %118)
  store i32 %119, i32* %15, align 4
  %120 = load i32, i32* %15, align 4
  %121 = icmp sgt i32 %120, 0
  br i1 %121, label %122, label %129

122:                                              ; preds = %117
  %123 = load i32, i32* %15, align 4
  %124 = call i32 @dup2(i32 %123, i32 0)
  %125 = load i32, i32* %15, align 4
  %126 = call i32 @dup2(i32 %125, i32 1)
  %127 = load i32, i32* %15, align 4
  %128 = call i32 @dup2(i32 %127, i32 2)
  br label %129

129:                                              ; preds = %122, %117
  %130 = load %struct.ead_msg_cmd*, %struct.ead_msg_cmd** %9, align 8
  %131 = getelementptr inbounds %struct.ead_msg_cmd, %struct.ead_msg_cmd* %130, i32 0, i32 0
  %132 = load i64*, i64** %131, align 8
  %133 = bitcast i64* %132 to i8*
  %134 = call i32 @system(i8* %133)
  %135 = call i32 @exit(i32 0) #3
  unreachable

136:                                              ; preds = %113
  %137 = load i32, i32* %17, align 4
  %138 = icmp sgt i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %136
  br label %143

140:                                              ; preds = %136
  br label %141

141:                                              ; preds = %140
  store i32 0, i32* %4, align 4
  br label %228

142:                                              ; preds = %39
  store i32 0, i32* %4, align 4
  br label %228

143:                                              ; preds = %139, %110
  %144 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pktbuf, align 8
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 0
  store %struct.ead_msg* %145, %struct.ead_msg** %8, align 8
  %146 = load %struct.ead_msg*, %struct.ead_msg** %8, align 8
  %147 = load i32, i32* @cmd_data, align 4
  %148 = call i8* @EAD_ENC_DATA(%struct.ead_msg* %146, i32 %147)
  %149 = bitcast i8* %148 to %struct.ead_msg_cmd_data*
  store %struct.ead_msg_cmd_data* %149, %struct.ead_msg_cmd_data** %10, align 8
  %150 = load i32, i32* %18, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %223

152:                                              ; preds = %143
  %153 = call i32 @gettimeofday(%struct.timeval* %12, i32* null)
  %154 = call i32 @memcpy(%struct.timeval* %13, %struct.timeval* %12, i32 16)
  %155 = load i32, i32* @PCAP_TIMEOUT, align 4
  %156 = mul nsw i32 %155, 1000
  %157 = getelementptr inbounds %struct.timeval, %struct.timeval* %11, i32 0, i32 0
  store i32 %156, i32* %157, align 8
  %158 = getelementptr inbounds %struct.timeval, %struct.timeval* %11, i32 0, i32 1
  store i64 0, i64* %158, align 8
  br label %159

159:                                              ; preds = %206, %152
  %160 = load %struct.ead_msg_cmd_data*, %struct.ead_msg_cmd_data** %10, align 8
  %161 = getelementptr inbounds %struct.ead_msg_cmd_data, %struct.ead_msg_cmd_data* %160, i32 0, i32 0
  store i32 0, i32* %161, align 4
  %162 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @FD_SET(i32 %163, i32* %16)
  %165 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %166 = load i32, i32* %165, align 4
  %167 = add nsw i32 %166, 1
  %168 = call i32 @select(i32 %167, i32* %16, i32* null, i32* null, %struct.timeval* %11)
  store i32 %168, i32* %22, align 4
  store i32 0, i32* %23, align 4
  %169 = load i32, i32* %22, align 4
  %170 = icmp sgt i32 %169, 0
  br i1 %170, label %171, label %182

171:                                              ; preds = %159
  %172 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.ead_msg_cmd_data*, %struct.ead_msg_cmd_data** %10, align 8
  %175 = getelementptr inbounds %struct.ead_msg_cmd_data, %struct.ead_msg_cmd_data* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @read(i32 %173, i32 %176, i32 1024)
  store i32 %177, i32* %23, align 4
  %178 = load i32, i32* %23, align 4
  %179 = icmp slt i32 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %171
  store i32 0, i32* %23, align 4
  br label %181

181:                                              ; preds = %180, %171
  br label %182

182:                                              ; preds = %181, %159
  %183 = load i32, i32* %23, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %189, label %185

185:                                              ; preds = %182
  %186 = load i32, i32* @child_pending, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %189, label %188

188:                                              ; preds = %185
  br label %215

189:                                              ; preds = %185, %182
  %190 = load i32, i32* %23, align 4
  %191 = load %struct.ead_msg*, %struct.ead_msg** %8, align 8
  %192 = getelementptr inbounds %struct.ead_msg, %struct.ead_msg* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @ntohl(i32 %193)
  %195 = load i32, i32* %19, align 4
  %196 = call i32 @DEBUG(i32 3, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %190, i32 %194, i32 %195)
  %197 = load %struct.ead_msg*, %struct.ead_msg** %8, align 8
  %198 = load i32, i32* %23, align 4
  %199 = sext i32 %198 to i64
  %200 = add i64 8, %199
  %201 = trunc i64 %200 to i32
  %202 = call i32 @ead_encrypt_message(%struct.ead_msg* %197, i32 %201)
  %203 = load %struct.ead_packet*, %struct.ead_packet** %5, align 8
  %204 = call i32 @ead_send_packet_clone(%struct.ead_packet* %203)
  %205 = call i32 @gettimeofday(%struct.timeval* %13, i32* null)
  br label %206

206:                                              ; preds = %189
  %207 = getelementptr inbounds %struct.timeval, %struct.timeval* %13, i32 0, i32 1
  %208 = load i64, i64* %207, align 8
  %209 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 1
  %210 = load i64, i64* %209, align 8
  %211 = load i32, i32* %19, align 4
  %212 = sext i32 %211 to i64
  %213 = add nsw i64 %210, %212
  %214 = icmp slt i64 %208, %213
  br i1 %214, label %159, label %215

215:                                              ; preds = %206, %188
  %216 = load i32, i32* @child_pending, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %222

218:                                              ; preds = %215
  %219 = load i32, i32* %17, align 4
  %220 = load i32, i32* @SIGKILL, align 4
  %221 = call i32 @kill(i32 %219, i32 %220)
  store i32 0, i32* %4, align 4
  br label %228

222:                                              ; preds = %215
  br label %223

223:                                              ; preds = %222, %143
  %224 = load %struct.ead_msg_cmd_data*, %struct.ead_msg_cmd_data** %10, align 8
  %225 = getelementptr inbounds %struct.ead_msg_cmd_data, %struct.ead_msg_cmd_data* %224, i32 0, i32 0
  store i32 1, i32* %225, align 4
  %226 = load %struct.ead_msg*, %struct.ead_msg** %8, align 8
  %227 = call i32 @ead_encrypt_message(%struct.ead_msg* %226, i32 8)
  store i32 1, i32* %4, align 4
  br label %228

228:                                              ; preds = %223, %218, %142, %141, %112, %60, %38
  %229 = load i32, i32* %4, align 4
  ret i32 %229
}

declare dso_local i8* @EAD_ENC_DATA(%struct.ead_msg*, i32) #1

declare dso_local i32 @ead_decrypt_message(%struct.ead_msg*) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @pipe(i32*) #1

declare dso_local i32 @fcntl(i32, i32, ...) #1

declare dso_local i32 @fork(...) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @dup2(i32, i32) #1

declare dso_local i32 @system(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @gettimeofday(%struct.timeval*, i32*) #1

declare dso_local i32 @memcpy(%struct.timeval*, %struct.timeval*, i32) #1

declare dso_local i32 @FD_SET(i32, i32*) #1

declare dso_local i32 @select(i32, i32*, i32*, i32*, %struct.timeval*) #1

declare dso_local i32 @read(i32, i32, i32) #1

declare dso_local i32 @DEBUG(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @ead_encrypt_message(%struct.ead_msg*, i32) #1

declare dso_local i32 @ead_send_packet_clone(%struct.ead_packet*) #1

declare dso_local i32 @kill(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
