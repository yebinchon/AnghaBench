; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm2-cmd.c_tpm2_seal_trusted.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm2-cmd.c_tpm2_seal_trusted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }
%struct.tpm_chip = type { i32 }
%struct.trusted_key_payload = type { i32, i32, i32, i64, i32 }
%struct.trusted_key_options = type { i64, i64, i32, i32, i32, i32 }
%struct.tpm_buf = type { i32, i32* }

@tpm2_hash_map = common dso_local global %struct.TYPE_3__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@TPM2_ST_SESSIONS = common dso_local global i32 0, align 4
@TPM2_CC_CREATE = common dso_local global i32 0, align 4
@TPM2_RS_PW = common dso_local global i32 0, align 4
@TPM_DIGEST_SIZE = common dso_local global i64 0, align 8
@TPM_ALG_KEYEDHASH = common dso_local global i64 0, align 8
@TPM2_OA_USER_WITH_AUTH = common dso_local global i32 0, align 4
@TPM_ALG_NULL = common dso_local global i64 0, align 8
@TPM_BUF_OVERFLOW = common dso_local global i32 0, align 4
@E2BIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"sealing data\00", align 1
@TPM_HEADER_SIZE = common dso_local global i64 0, align 8
@MAX_BLOB_SIZE = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@TPM2_RC_HASH = common dso_local global i64 0, align 8
@EPERM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tpm2_seal_trusted(%struct.tpm_chip* %0, %struct.trusted_key_payload* %1, %struct.trusted_key_options* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tpm_chip*, align 8
  %6 = alloca %struct.trusted_key_payload*, align 8
  %7 = alloca %struct.trusted_key_options*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.tpm_buf, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.tpm_chip* %0, %struct.tpm_chip** %5, align 8
  store %struct.trusted_key_payload* %1, %struct.trusted_key_payload** %6, align 8
  store %struct.trusted_key_options* %2, %struct.trusted_key_options** %7, align 8
  store i32 0, i32* %11, align 4
  br label %13

13:                                               ; preds = %37, %3
  %14 = load i32, i32* %11, align 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** @tpm2_hash_map, align 8
  %16 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %15)
  %17 = icmp slt i32 %14, %16
  br i1 %17, label %18, label %40

18:                                               ; preds = %13
  %19 = load %struct.trusted_key_options*, %struct.trusted_key_options** %7, align 8
  %20 = getelementptr inbounds %struct.trusted_key_options, %struct.trusted_key_options* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** @tpm2_hash_map, align 8
  %23 = load i32, i32* %11, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %21, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %18
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** @tpm2_hash_map, align 8
  %31 = load i32, i32* %11, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %10, align 8
  br label %40

36:                                               ; preds = %18
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %11, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %11, align 4
  br label %13

40:                                               ; preds = %29, %13
  %41 = load i32, i32* %11, align 4
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** @tpm2_hash_map, align 8
  %43 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %42)
  %44 = icmp eq i32 %41, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %203

48:                                               ; preds = %40
  %49 = load i32, i32* @TPM2_ST_SESSIONS, align 4
  %50 = load i32, i32* @TPM2_CC_CREATE, align 4
  %51 = call i32 @tpm_buf_init(%struct.tpm_buf* %9, i32 %49, i32 %50)
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* %12, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = load i32, i32* %12, align 4
  store i32 %55, i32* %4, align 4
  br label %203

56:                                               ; preds = %48
  %57 = load %struct.trusted_key_options*, %struct.trusted_key_options** %7, align 8
  %58 = getelementptr inbounds %struct.trusted_key_options, %struct.trusted_key_options* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @tpm_buf_append_u32(%struct.tpm_buf* %9, i32 %59)
  %61 = load i32, i32* @TPM2_RS_PW, align 4
  %62 = load %struct.trusted_key_options*, %struct.trusted_key_options** %7, align 8
  %63 = getelementptr inbounds %struct.trusted_key_options, %struct.trusted_key_options* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 8
  %65 = load i64, i64* @TPM_DIGEST_SIZE, align 8
  %66 = call i32 @tpm2_buf_append_auth(%struct.tpm_buf* %9, i32 %61, i32* null, i32 0, i32 0, i32 %64, i64 %65)
  %67 = load i64, i64* @TPM_DIGEST_SIZE, align 8
  %68 = add nsw i64 4, %67
  %69 = load %struct.trusted_key_payload*, %struct.trusted_key_payload** %6, align 8
  %70 = getelementptr inbounds %struct.trusted_key_payload, %struct.trusted_key_payload* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = add nsw i64 %68, %71
  %73 = add nsw i64 %72, 1
  %74 = call i32 @tpm_buf_append_u16(%struct.tpm_buf* %9, i64 %73)
  %75 = load i64, i64* @TPM_DIGEST_SIZE, align 8
  %76 = call i32 @tpm_buf_append_u16(%struct.tpm_buf* %9, i64 %75)
  %77 = load %struct.trusted_key_options*, %struct.trusted_key_options** %7, align 8
  %78 = getelementptr inbounds %struct.trusted_key_options, %struct.trusted_key_options* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = load i64, i64* @TPM_DIGEST_SIZE, align 8
  %81 = call i32 @tpm_buf_append(%struct.tpm_buf* %9, i32 %79, i64 %80)
  %82 = load %struct.trusted_key_payload*, %struct.trusted_key_payload** %6, align 8
  %83 = getelementptr inbounds %struct.trusted_key_payload, %struct.trusted_key_payload* %82, i32 0, i32 3
  %84 = load i64, i64* %83, align 8
  %85 = add nsw i64 %84, 1
  %86 = call i32 @tpm_buf_append_u16(%struct.tpm_buf* %9, i64 %85)
  %87 = load %struct.trusted_key_payload*, %struct.trusted_key_payload** %6, align 8
  %88 = getelementptr inbounds %struct.trusted_key_payload, %struct.trusted_key_payload* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.trusted_key_payload*, %struct.trusted_key_payload** %6, align 8
  %91 = getelementptr inbounds %struct.trusted_key_payload, %struct.trusted_key_payload* %90, i32 0, i32 3
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @tpm_buf_append(%struct.tpm_buf* %9, i32 %89, i64 %92)
  %94 = load %struct.trusted_key_payload*, %struct.trusted_key_payload** %6, align 8
  %95 = getelementptr inbounds %struct.trusted_key_payload, %struct.trusted_key_payload* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @tpm_buf_append_u8(%struct.tpm_buf* %9, i32 %96)
  %98 = load %struct.trusted_key_options*, %struct.trusted_key_options** %7, align 8
  %99 = getelementptr inbounds %struct.trusted_key_options, %struct.trusted_key_options* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = add nsw i64 14, %100
  %102 = call i32 @tpm_buf_append_u16(%struct.tpm_buf* %9, i64 %101)
  %103 = load i64, i64* @TPM_ALG_KEYEDHASH, align 8
  %104 = call i32 @tpm_buf_append_u16(%struct.tpm_buf* %9, i64 %103)
  %105 = load i64, i64* %10, align 8
  %106 = call i32 @tpm_buf_append_u16(%struct.tpm_buf* %9, i64 %105)
  %107 = load %struct.trusted_key_options*, %struct.trusted_key_options** %7, align 8
  %108 = getelementptr inbounds %struct.trusted_key_options, %struct.trusted_key_options* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %124

111:                                              ; preds = %56
  %112 = call i32 @tpm_buf_append_u32(%struct.tpm_buf* %9, i32 0)
  %113 = load %struct.trusted_key_options*, %struct.trusted_key_options** %7, align 8
  %114 = getelementptr inbounds %struct.trusted_key_options, %struct.trusted_key_options* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = call i32 @tpm_buf_append_u16(%struct.tpm_buf* %9, i64 %115)
  %117 = load %struct.trusted_key_options*, %struct.trusted_key_options** %7, align 8
  %118 = getelementptr inbounds %struct.trusted_key_options, %struct.trusted_key_options* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.trusted_key_options*, %struct.trusted_key_options** %7, align 8
  %121 = getelementptr inbounds %struct.trusted_key_options, %struct.trusted_key_options* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = call i32 @tpm_buf_append(%struct.tpm_buf* %9, i32 %119, i64 %122)
  br label %128

124:                                              ; preds = %56
  %125 = load i32, i32* @TPM2_OA_USER_WITH_AUTH, align 4
  %126 = call i32 @tpm_buf_append_u32(%struct.tpm_buf* %9, i32 %125)
  %127 = call i32 @tpm_buf_append_u16(%struct.tpm_buf* %9, i64 0)
  br label %128

128:                                              ; preds = %124, %111
  %129 = load i64, i64* @TPM_ALG_NULL, align 8
  %130 = call i32 @tpm_buf_append_u16(%struct.tpm_buf* %9, i64 %129)
  %131 = call i32 @tpm_buf_append_u16(%struct.tpm_buf* %9, i64 0)
  %132 = call i32 @tpm_buf_append_u16(%struct.tpm_buf* %9, i64 0)
  %133 = call i32 @tpm_buf_append_u32(%struct.tpm_buf* %9, i32 0)
  %134 = getelementptr inbounds %struct.tpm_buf, %struct.tpm_buf* %9, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @TPM_BUF_OVERFLOW, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %128
  %140 = load i32, i32* @E2BIG, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %12, align 4
  br label %185

142:                                              ; preds = %128
  %143 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %144 = call i32 @tpm_transmit_cmd(%struct.tpm_chip* %143, %struct.tpm_buf* %9, i32 4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32 %144, i32* %12, align 4
  %145 = load i32, i32* %12, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %142
  br label %185

148:                                              ; preds = %142
  %149 = getelementptr inbounds %struct.tpm_buf, %struct.tpm_buf* %9, i32 0, i32 1
  %150 = load i32*, i32** %149, align 8
  %151 = load i64, i64* @TPM_HEADER_SIZE, align 8
  %152 = getelementptr inbounds i32, i32* %150, i64 %151
  %153 = call i32 @be32_to_cpup(i32* %152)
  store i32 %153, i32* %8, align 4
  %154 = load i32, i32* %8, align 4
  %155 = load i32, i32* @MAX_BLOB_SIZE, align 4
  %156 = icmp ugt i32 %154, %155
  br i1 %156, label %157, label %160

157:                                              ; preds = %148
  %158 = load i32, i32* @E2BIG, align 4
  %159 = sub nsw i32 0, %158
  store i32 %159, i32* %12, align 4
  br label %185

160:                                              ; preds = %148
  %161 = call i64 @tpm_buf_length(%struct.tpm_buf* %9)
  %162 = load i64, i64* @TPM_HEADER_SIZE, align 8
  %163 = add i64 %162, 4
  %164 = load i32, i32* %8, align 4
  %165 = zext i32 %164 to i64
  %166 = add i64 %163, %165
  %167 = icmp ult i64 %161, %166
  br i1 %167, label %168, label %171

168:                                              ; preds = %160
  %169 = load i32, i32* @EFAULT, align 4
  %170 = sub nsw i32 0, %169
  store i32 %170, i32* %12, align 4
  br label %185

171:                                              ; preds = %160
  %172 = load %struct.trusted_key_payload*, %struct.trusted_key_payload** %6, align 8
  %173 = getelementptr inbounds %struct.trusted_key_payload, %struct.trusted_key_payload* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = getelementptr inbounds %struct.tpm_buf, %struct.tpm_buf* %9, i32 0, i32 1
  %176 = load i32*, i32** %175, align 8
  %177 = load i64, i64* @TPM_HEADER_SIZE, align 8
  %178 = add i64 %177, 4
  %179 = getelementptr inbounds i32, i32* %176, i64 %178
  %180 = load i32, i32* %8, align 4
  %181 = call i32 @memcpy(i32 %174, i32* %179, i32 %180)
  %182 = load i32, i32* %8, align 4
  %183 = load %struct.trusted_key_payload*, %struct.trusted_key_payload** %6, align 8
  %184 = getelementptr inbounds %struct.trusted_key_payload, %struct.trusted_key_payload* %183, i32 0, i32 0
  store i32 %182, i32* %184, align 8
  br label %185

185:                                              ; preds = %171, %168, %157, %147, %139
  %186 = call i32 @tpm_buf_destroy(%struct.tpm_buf* %9)
  %187 = load i32, i32* %12, align 4
  %188 = icmp sgt i32 %187, 0
  br i1 %188, label %189, label %201

189:                                              ; preds = %185
  %190 = load i32, i32* %12, align 4
  %191 = call i64 @tpm2_rc_value(i32 %190)
  %192 = load i64, i64* @TPM2_RC_HASH, align 8
  %193 = icmp eq i64 %191, %192
  br i1 %193, label %194, label %197

194:                                              ; preds = %189
  %195 = load i32, i32* @EINVAL, align 4
  %196 = sub nsw i32 0, %195
  store i32 %196, i32* %12, align 4
  br label %200

197:                                              ; preds = %189
  %198 = load i32, i32* @EPERM, align 4
  %199 = sub nsw i32 0, %198
  store i32 %199, i32* %12, align 4
  br label %200

200:                                              ; preds = %197, %194
  br label %201

201:                                              ; preds = %200, %185
  %202 = load i32, i32* %12, align 4
  store i32 %202, i32* %4, align 4
  br label %203

203:                                              ; preds = %201, %54, %45
  %204 = load i32, i32* %4, align 4
  ret i32 %204
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @tpm_buf_init(%struct.tpm_buf*, i32, i32) #1

declare dso_local i32 @tpm_buf_append_u32(%struct.tpm_buf*, i32) #1

declare dso_local i32 @tpm2_buf_append_auth(%struct.tpm_buf*, i32, i32*, i32, i32, i32, i64) #1

declare dso_local i32 @tpm_buf_append_u16(%struct.tpm_buf*, i64) #1

declare dso_local i32 @tpm_buf_append(%struct.tpm_buf*, i32, i64) #1

declare dso_local i32 @tpm_buf_append_u8(%struct.tpm_buf*, i32) #1

declare dso_local i32 @tpm_transmit_cmd(%struct.tpm_chip*, %struct.tpm_buf*, i32, i8*) #1

declare dso_local i32 @be32_to_cpup(i32*) #1

declare dso_local i64 @tpm_buf_length(%struct.tpm_buf*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @tpm_buf_destroy(%struct.tpm_buf*) #1

declare dso_local i64 @tpm2_rc_value(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
