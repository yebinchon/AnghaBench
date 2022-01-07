; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-msg.c_rwm_encrypt_decrypt_to.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-msg.c_rwm_encrypt_decrypt_to.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rwm_encrypt_decrypt_tmp = type { void (%struct.vk_aes_ctx*, i8*, i8*, i32, i8*)*, i32, i8*, i32, %struct.vk_aes_ctx*, %struct.raw_message*, i32 }
%struct.vk_aes_ctx = type { i32 }
%struct.raw_message = type { i32, i64, i32, %struct.msg_part*, %struct.msg_part* }
%struct.msg_part = type { i64, %struct.TYPE_4__*, i64, %struct.msg_part* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.msg_buffer = type { i32 }

@RM_PREPEND_RESERVE = common dso_local global i32 0, align 4
@MSG_STD_BUFFER = common dso_local global i32 0, align 4
@rwm_encrypt_decrypt_to.t = internal global %struct.rwm_encrypt_decrypt_tmp zeroinitializer, align 8
@rwm_process_encrypt_decrypt = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rwm_encrypt_decrypt_to(%struct.raw_message* %0, %struct.raw_message* %1, i32 %2, %struct.vk_aes_ctx* %3, void (%struct.vk_aes_ctx*, i8*, i8*, i32, i8*)* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.raw_message*, align 8
  %9 = alloca %struct.raw_message*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.vk_aes_ctx*, align 8
  %12 = alloca void (%struct.vk_aes_ctx*, i8*, i8*, i32, i8*)*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.msg_buffer*, align 8
  %16 = alloca %struct.msg_part*, align 8
  store %struct.raw_message* %0, %struct.raw_message** %8, align 8
  store %struct.raw_message* %1, %struct.raw_message** %9, align 8
  store i32 %2, i32* %10, align 4
  store %struct.vk_aes_ctx* %3, %struct.vk_aes_ctx** %11, align 8
  store void (%struct.vk_aes_ctx*, i8*, i8*, i32, i8*)* %4, void (%struct.vk_aes_ctx*, i8*, i8*, i32, i8*)** %12, align 8
  store i8* %5, i8** %13, align 8
  %17 = load i32, i32* %10, align 4
  %18 = icmp sge i32 %17, 0
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load i32, i32* %10, align 4
  %22 = load %struct.raw_message*, %struct.raw_message** %8, align 8
  %23 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp sgt i32 %21, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %6
  %27 = load %struct.raw_message*, %struct.raw_message** %8, align 8
  %28 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %10, align 4
  br label %30

30:                                               ; preds = %26, %6
  %31 = load i32, i32* %10, align 4
  %32 = and i32 %31, -16
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %30
  store i32 0, i32* %7, align 4
  br label %181

36:                                               ; preds = %30
  %37 = load %struct.raw_message*, %struct.raw_message** %9, align 8
  %38 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %37, i32 0, i32 3
  %39 = load %struct.msg_part*, %struct.msg_part** %38, align 8
  %40 = icmp ne %struct.msg_part* %39, null
  br i1 %40, label %41, label %61

41:                                               ; preds = %36
  %42 = load %struct.raw_message*, %struct.raw_message** %9, align 8
  %43 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %42, i32 0, i32 3
  %44 = load %struct.msg_part*, %struct.msg_part** %43, align 8
  %45 = getelementptr inbounds %struct.msg_part, %struct.msg_part* %44, i32 0, i32 3
  %46 = load %struct.msg_part*, %struct.msg_part** %45, align 8
  %47 = icmp ne %struct.msg_part* %46, null
  br i1 %47, label %58, label %48

48:                                               ; preds = %41
  %49 = load %struct.raw_message*, %struct.raw_message** %9, align 8
  %50 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %49, i32 0, i32 3
  %51 = load %struct.msg_part*, %struct.msg_part** %50, align 8
  %52 = getelementptr inbounds %struct.msg_part, %struct.msg_part* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.raw_message*, %struct.raw_message** %9, align 8
  %55 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %53, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %48, %41
  %59 = load %struct.raw_message*, %struct.raw_message** %9, align 8
  %60 = call i32 @fork_message_chain(%struct.raw_message* %59)
  br label %61

61:                                               ; preds = %58, %48, %36
  %62 = load %struct.raw_message*, %struct.raw_message** %9, align 8
  %63 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %62, i32 0, i32 3
  %64 = load %struct.msg_part*, %struct.msg_part** %63, align 8
  %65 = icmp ne %struct.msg_part* %64, null
  br i1 %65, label %66, label %75

66:                                               ; preds = %61
  %67 = load %struct.raw_message*, %struct.raw_message** %9, align 8
  %68 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %67, i32 0, i32 3
  %69 = load %struct.msg_part*, %struct.msg_part** %68, align 8
  %70 = getelementptr inbounds %struct.msg_part, %struct.msg_part* %69, i32 0, i32 1
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp ne i32 %73, 1
  br i1 %74, label %75, label %150

75:                                               ; preds = %66, %61
  %76 = load %struct.raw_message*, %struct.raw_message** %9, align 8
  %77 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %76, i32 0, i32 3
  %78 = load %struct.msg_part*, %struct.msg_part** %77, align 8
  %79 = icmp ne %struct.msg_part* %78, null
  br i1 %79, label %80, label %82

80:                                               ; preds = %75
  %81 = load i32, i32* %10, align 4
  br label %86

82:                                               ; preds = %75
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* @RM_PREPEND_RESERVE, align 4
  %85 = add nsw i32 %83, %84
  br label %86

86:                                               ; preds = %82, %80
  %87 = phi i32 [ %81, %80 ], [ %85, %82 ]
  store i32 %87, i32* %14, align 4
  %88 = load %struct.raw_message*, %struct.raw_message** %9, align 8
  %89 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %88, i32 0, i32 3
  %90 = load %struct.msg_part*, %struct.msg_part** %89, align 8
  %91 = icmp ne %struct.msg_part* %90, null
  br i1 %91, label %92, label %98

92:                                               ; preds = %86
  %93 = load %struct.raw_message*, %struct.raw_message** %9, align 8
  %94 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %93, i32 0, i32 3
  %95 = load %struct.msg_part*, %struct.msg_part** %94, align 8
  %96 = getelementptr inbounds %struct.msg_part, %struct.msg_part* %95, i32 0, i32 1
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  br label %99

98:                                               ; preds = %86
  br label %99

99:                                               ; preds = %98, %92
  %100 = phi %struct.TYPE_4__* [ %97, %92 ], [ null, %98 ]
  %101 = load i32, i32* %14, align 4
  %102 = load i32, i32* @MSG_STD_BUFFER, align 4
  %103 = icmp sge i32 %101, %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %99
  %105 = load i32, i32* @MSG_STD_BUFFER, align 4
  br label %108

106:                                              ; preds = %99
  %107 = load i32, i32* %14, align 4
  br label %108

108:                                              ; preds = %106, %104
  %109 = phi i32 [ %105, %104 ], [ %107, %106 ]
  %110 = call %struct.msg_buffer* @alloc_msg_buffer(%struct.TYPE_4__* %100, i32 %109)
  store %struct.msg_buffer* %110, %struct.msg_buffer** %15, align 8
  %111 = load %struct.raw_message*, %struct.raw_message** %9, align 8
  %112 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %111, i32 0, i32 3
  %113 = load %struct.msg_part*, %struct.msg_part** %112, align 8
  %114 = load %struct.msg_buffer*, %struct.msg_buffer** %15, align 8
  %115 = call %struct.msg_part* @new_msg_part(%struct.msg_part* %113, %struct.msg_buffer* %114)
  store %struct.msg_part* %115, %struct.msg_part** %16, align 8
  %116 = load %struct.raw_message*, %struct.raw_message** %9, align 8
  %117 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %116, i32 0, i32 3
  %118 = load %struct.msg_part*, %struct.msg_part** %117, align 8
  %119 = icmp ne %struct.msg_part* %118, null
  br i1 %119, label %120, label %131

120:                                              ; preds = %108
  %121 = load %struct.msg_part*, %struct.msg_part** %16, align 8
  %122 = load %struct.raw_message*, %struct.raw_message** %9, align 8
  %123 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %122, i32 0, i32 3
  %124 = load %struct.msg_part*, %struct.msg_part** %123, align 8
  %125 = getelementptr inbounds %struct.msg_part, %struct.msg_part* %124, i32 0, i32 3
  store %struct.msg_part* %121, %struct.msg_part** %125, align 8
  %126 = load %struct.msg_part*, %struct.msg_part** %16, align 8
  %127 = load %struct.raw_message*, %struct.raw_message** %9, align 8
  %128 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %127, i32 0, i32 3
  store %struct.msg_part* %126, %struct.msg_part** %128, align 8
  %129 = load %struct.raw_message*, %struct.raw_message** %9, align 8
  %130 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %129, i32 0, i32 1
  store i64 0, i64* %130, align 8
  br label %149

131:                                              ; preds = %108
  %132 = load %struct.msg_part*, %struct.msg_part** %16, align 8
  %133 = load %struct.raw_message*, %struct.raw_message** %9, align 8
  %134 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %133, i32 0, i32 4
  store %struct.msg_part* %132, %struct.msg_part** %134, align 8
  %135 = load %struct.raw_message*, %struct.raw_message** %9, align 8
  %136 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %135, i32 0, i32 3
  store %struct.msg_part* %132, %struct.msg_part** %136, align 8
  %137 = load i32, i32* @RM_PREPEND_RESERVE, align 4
  %138 = sext i32 %137 to i64
  %139 = load %struct.msg_part*, %struct.msg_part** %16, align 8
  %140 = getelementptr inbounds %struct.msg_part, %struct.msg_part* %139, i32 0, i32 0
  store i64 %138, i64* %140, align 8
  %141 = trunc i64 %138 to i32
  %142 = load %struct.raw_message*, %struct.raw_message** %9, align 8
  %143 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %142, i32 0, i32 2
  store i32 %141, i32* %143, align 8
  %144 = sext i32 %141 to i64
  %145 = load %struct.raw_message*, %struct.raw_message** %9, align 8
  %146 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %145, i32 0, i32 1
  store i64 %144, i64* %146, align 8
  %147 = load %struct.msg_part*, %struct.msg_part** %16, align 8
  %148 = getelementptr inbounds %struct.msg_part, %struct.msg_part* %147, i32 0, i32 2
  store i64 0, i64* %148, align 8
  br label %149

149:                                              ; preds = %131, %120
  br label %150

150:                                              ; preds = %149, %66
  %151 = load i32, i32* getelementptr inbounds (%struct.rwm_encrypt_decrypt_tmp, %struct.rwm_encrypt_decrypt_tmp* @rwm_encrypt_decrypt_to.t, i32 0, i32 6), align 8
  %152 = icmp ne i32 %151, 0
  %153 = xor i1 %152, true
  %154 = zext i1 %153 to i32
  %155 = call i32 @assert(i32 %154)
  %156 = load void (%struct.vk_aes_ctx*, i8*, i8*, i32, i8*)*, void (%struct.vk_aes_ctx*, i8*, i8*, i32, i8*)** %12, align 8
  store void (%struct.vk_aes_ctx*, i8*, i8*, i32, i8*)* %156, void (%struct.vk_aes_ctx*, i8*, i8*, i32, i8*)** getelementptr inbounds (%struct.rwm_encrypt_decrypt_tmp, %struct.rwm_encrypt_decrypt_tmp* @rwm_encrypt_decrypt_to.t, i32 0, i32 0), align 8
  %157 = load %struct.raw_message*, %struct.raw_message** %9, align 8
  %158 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %157, i32 0, i32 3
  %159 = load %struct.msg_part*, %struct.msg_part** %158, align 8
  %160 = getelementptr inbounds %struct.msg_part, %struct.msg_part* %159, i32 0, i32 1
  %161 = load %struct.TYPE_4__*, %struct.TYPE_4__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 1
  %163 = load %struct.TYPE_3__*, %struct.TYPE_3__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = sext i32 %165 to i64
  %167 = load %struct.raw_message*, %struct.raw_message** %9, align 8
  %168 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = sub nsw i64 %166, %169
  %171 = trunc i64 %170 to i32
  store i32 %171, i32* getelementptr inbounds (%struct.rwm_encrypt_decrypt_tmp, %struct.rwm_encrypt_decrypt_tmp* @rwm_encrypt_decrypt_to.t, i32 0, i32 1), align 8
  %172 = load %struct.raw_message*, %struct.raw_message** %9, align 8
  store %struct.raw_message* %172, %struct.raw_message** getelementptr inbounds (%struct.rwm_encrypt_decrypt_tmp, %struct.rwm_encrypt_decrypt_tmp* @rwm_encrypt_decrypt_to.t, i32 0, i32 5), align 8
  %173 = load %struct.vk_aes_ctx*, %struct.vk_aes_ctx** %11, align 8
  store %struct.vk_aes_ctx* %173, %struct.vk_aes_ctx** getelementptr inbounds (%struct.rwm_encrypt_decrypt_tmp, %struct.rwm_encrypt_decrypt_tmp* @rwm_encrypt_decrypt_to.t, i32 0, i32 4), align 8
  %174 = load i8*, i8** %13, align 8
  store i8* %174, i8** getelementptr inbounds (%struct.rwm_encrypt_decrypt_tmp, %struct.rwm_encrypt_decrypt_tmp* @rwm_encrypt_decrypt_to.t, i32 0, i32 2), align 8
  %175 = load i32, i32* %10, align 4
  store i32 %175, i32* getelementptr inbounds (%struct.rwm_encrypt_decrypt_tmp, %struct.rwm_encrypt_decrypt_tmp* @rwm_encrypt_decrypt_to.t, i32 0, i32 3), align 8
  %176 = load %struct.raw_message*, %struct.raw_message** %8, align 8
  %177 = load i32, i32* %10, align 4
  %178 = load i64, i64* @rwm_process_encrypt_decrypt, align 8
  %179 = inttoptr i64 %178 to i8*
  %180 = call i32 @rwm_process_and_advance(%struct.raw_message* %176, i32 %177, i8* %179, %struct.rwm_encrypt_decrypt_tmp* @rwm_encrypt_decrypt_to.t)
  store i32 %180, i32* %7, align 4
  br label %181

181:                                              ; preds = %150, %35
  %182 = load i32, i32* %7, align 4
  ret i32 %182
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @fork_message_chain(%struct.raw_message*) #1

declare dso_local %struct.msg_buffer* @alloc_msg_buffer(%struct.TYPE_4__*, i32) #1

declare dso_local %struct.msg_part* @new_msg_part(%struct.msg_part*, %struct.msg_buffer*) #1

declare dso_local i32 @rwm_process_and_advance(%struct.raw_message*, i32, i8*, %struct.rwm_encrypt_decrypt_tmp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
