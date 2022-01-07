; ModuleID = '/home/carl/AnghaBench/kphp-kdb/text/extr_text-index.c_process_message0.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/text/extr_text-index.c_process_message0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.lev_add_message = type { i32, i64, i32, i32, i32, i64 }

@discarded_rec = common dso_local global i32 0, align 4
@last_global_id = common dso_local global i32 0, align 4
@User = common dso_local global %struct.TYPE_3__** null, align 8
@tot_users = common dso_local global i32 0, align 4
@MAX_EXTRA_MASK = common dso_local global i32 0, align 4
@LEV_TX_ADD_MESSAGE_EXT_LL = common dso_local global i32 0, align 4
@min_legacy_id = common dso_local global i64 0, align 8
@max_legacy_id = common dso_local global i64 0, align 8
@current_extra_mask = common dso_local global i32 0, align 4
@LEV_TX_ADD_MESSAGE_EXT = common dso_local global i32 0, align 4
@LEV_TX_ADD_MESSAGE_EXT_ZF = common dso_local global i32 0, align 4
@search_enabled = common dso_local global i64 0, align 8
@tot_search_words = common dso_local global i32 0, align 4
@UserSearchWords = common dso_local global i64* null, align 8
@max_user_search_words = common dso_local global i64 0, align 8
@max_user_search_id = common dso_local global i32 0, align 4
@msgs_read = common dso_local global i32 0, align 4
@msgs_bytes = common dso_local global i32 0, align 4
@max_uid = common dso_local global i32 0, align 4
@UserMsgCnt = common dso_local global i32* null, align 8
@UserMsgBytes = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @process_message0(%struct.lev_add_message* %0, i32 %1) #0 {
  %3 = alloca %struct.lev_add_message*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.lev_add_message* %0, %struct.lev_add_message** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.lev_add_message*, %struct.lev_add_message** %3, align 8
  %10 = getelementptr inbounds %struct.lev_add_message, %struct.lev_add_message* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @conv_uid(i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load %struct.lev_add_message*, %struct.lev_add_message** %3, align 8
  %14 = getelementptr inbounds %struct.lev_add_message, %struct.lev_add_message* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @discarded_rec, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* @discarded_rec, align 4
  br label %191

21:                                               ; preds = %2
  %22 = load i32, i32* @last_global_id, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* @last_global_id, align 4
  %24 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @User, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %24, i64 %26
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = icmp ne %struct.TYPE_3__* %28, null
  br i1 %29, label %47, label %30

30:                                               ; preds = %21
  %31 = call %struct.TYPE_3__* @zmalloc0(i32 4)
  %32 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @User, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %32, i64 %34
  store %struct.TYPE_3__* %31, %struct.TYPE_3__** %35, align 8
  %36 = load %struct.lev_add_message*, %struct.lev_add_message** %3, align 8
  %37 = getelementptr inbounds %struct.lev_add_message, %struct.lev_add_message* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @User, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %39, i64 %41
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  store i32 %38, i32* %44, align 4
  %45 = load i32, i32* @tot_users, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* @tot_users, align 4
  br label %47

47:                                               ; preds = %30, %21
  %48 = load %struct.lev_add_message*, %struct.lev_add_message** %3, align 8
  %49 = getelementptr inbounds %struct.lev_add_message, %struct.lev_add_message* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %7, align 8
  %51 = load %struct.lev_add_message*, %struct.lev_add_message** %3, align 8
  %52 = getelementptr inbounds %struct.lev_add_message, %struct.lev_add_message* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @MAX_EXTRA_MASK, align 4
  %55 = xor i32 %54, -1
  %56 = and i32 %53, %55
  %57 = load i32, i32* @LEV_TX_ADD_MESSAGE_EXT_LL, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %68

59:                                               ; preds = %47
  %60 = load i64, i64* %7, align 8
  %61 = and i64 %60, 4294967295
  %62 = load %struct.lev_add_message*, %struct.lev_add_message** %3, align 8
  %63 = getelementptr inbounds %struct.lev_add_message, %struct.lev_add_message* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = sext i32 %64 to i64
  %66 = and i64 %65, -4294967296
  %67 = or i64 %61, %66
  store i64 %67, i64* %7, align 8
  br label %68

68:                                               ; preds = %59, %47
  %69 = load i64, i64* %7, align 8
  %70 = load i64, i64* @min_legacy_id, align 8
  %71 = icmp slt i64 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %68
  %73 = load i64, i64* %7, align 8
  store i64 %73, i64* @min_legacy_id, align 8
  br label %74

74:                                               ; preds = %72, %68
  %75 = load i64, i64* %7, align 8
  %76 = load i64, i64* @max_legacy_id, align 8
  %77 = icmp sgt i64 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %74
  %79 = load i64, i64* %7, align 8
  store i64 %79, i64* @max_legacy_id, align 8
  br label %80

80:                                               ; preds = %78, %74
  %81 = load i32, i32* %4, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %96

83:                                               ; preds = %80
  %84 = load %struct.lev_add_message*, %struct.lev_add_message** %3, align 8
  %85 = getelementptr inbounds %struct.lev_add_message, %struct.lev_add_message* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @MAX_EXTRA_MASK, align 4
  %88 = and i32 %86, %87
  %89 = load i32, i32* @current_extra_mask, align 4
  %90 = xor i32 %89, -1
  %91 = and i32 %88, %90
  %92 = icmp ne i32 %91, 0
  %93 = xor i1 %92, true
  %94 = zext i1 %93 to i32
  %95 = call i32 @assert(i32 %94)
  br label %118

96:                                               ; preds = %80
  %97 = load %struct.lev_add_message*, %struct.lev_add_message** %3, align 8
  %98 = getelementptr inbounds %struct.lev_add_message, %struct.lev_add_message* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @MAX_EXTRA_MASK, align 4
  %101 = xor i32 %100, -1
  %102 = and i32 %99, %101
  %103 = load i32, i32* @LEV_TX_ADD_MESSAGE_EXT, align 4
  %104 = icmp ne i32 %102, %103
  br i1 %104, label %105, label %114

105:                                              ; preds = %96
  %106 = load %struct.lev_add_message*, %struct.lev_add_message** %3, align 8
  %107 = getelementptr inbounds %struct.lev_add_message, %struct.lev_add_message* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @MAX_EXTRA_MASK, align 4
  %110 = xor i32 %109, -1
  %111 = and i32 %108, %110
  %112 = load i32, i32* @LEV_TX_ADD_MESSAGE_EXT_ZF, align 4
  %113 = icmp ne i32 %111, %112
  br label %114

114:                                              ; preds = %105, %96
  %115 = phi i1 [ false, %96 ], [ %113, %105 ]
  %116 = zext i1 %115 to i32
  %117 = call i32 @assert(i32 %116)
  br label %118

118:                                              ; preds = %114, %83
  %119 = load %struct.lev_add_message*, %struct.lev_add_message** %3, align 8
  %120 = getelementptr inbounds %struct.lev_add_message, %struct.lev_add_message* %119, i32 0, i32 5
  %121 = load i64, i64* %120, align 8
  %122 = load i32, i32* %4, align 4
  %123 = sext i32 %122 to i64
  %124 = add nsw i64 %121, %123
  %125 = load i32, i32* %6, align 4
  %126 = call i32 @preprocess_text(i64 %124, i32 %125)
  %127 = load i64, i64* @search_enabled, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %166

129:                                              ; preds = %118
  %130 = load %struct.lev_add_message*, %struct.lev_add_message** %3, align 8
  %131 = getelementptr inbounds %struct.lev_add_message, %struct.lev_add_message* %130, i32 0, i32 5
  %132 = load i64, i64* %131, align 8
  %133 = load i32, i32* %4, align 4
  %134 = sext i32 %133 to i64
  %135 = add nsw i64 %132, %134
  %136 = load i32, i32* %6, align 4
  %137 = call i32 @compute_message_distinct_words(i64 %135, i32 %136)
  store i32 %137, i32* %8, align 4
  %138 = load i32, i32* %8, align 4
  %139 = load i32, i32* @tot_search_words, align 4
  %140 = add nsw i32 %139, %138
  store i32 %140, i32* @tot_search_words, align 4
  %141 = load i32, i32* %8, align 4
  %142 = sext i32 %141 to i64
  %143 = load i64*, i64** @UserSearchWords, align 8
  %144 = load i32, i32* %5, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i64, i64* %143, i64 %145
  %147 = load i64, i64* %146, align 8
  %148 = add nsw i64 %147, %142
  store i64 %148, i64* %146, align 8
  %149 = load i64*, i64** @UserSearchWords, align 8
  %150 = load i32, i32* %5, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i64, i64* %149, i64 %151
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @max_user_search_words, align 8
  %155 = icmp sgt i64 %153, %154
  br i1 %155, label %156, label %165

156:                                              ; preds = %129
  %157 = load i64*, i64** @UserSearchWords, align 8
  %158 = load i32, i32* %5, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i64, i64* %157, i64 %159
  %161 = load i64, i64* %160, align 8
  store i64 %161, i64* @max_user_search_words, align 8
  %162 = load %struct.lev_add_message*, %struct.lev_add_message** %3, align 8
  %163 = getelementptr inbounds %struct.lev_add_message, %struct.lev_add_message* %162, i32 0, i32 4
  %164 = load i32, i32* %163, align 8
  store i32 %164, i32* @max_user_search_id, align 4
  br label %165

165:                                              ; preds = %156, %129
  br label %166

166:                                              ; preds = %165, %118
  %167 = load i32, i32* @msgs_read, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* @msgs_read, align 4
  %169 = load i32, i32* %6, align 4
  %170 = load i32, i32* @msgs_bytes, align 4
  %171 = add nsw i32 %170, %169
  store i32 %171, i32* @msgs_bytes, align 4
  %172 = load i32, i32* %5, align 4
  %173 = load i32, i32* @max_uid, align 4
  %174 = icmp sgt i32 %172, %173
  br i1 %174, label %175, label %177

175:                                              ; preds = %166
  %176 = load i32, i32* %5, align 4
  store i32 %176, i32* @max_uid, align 4
  br label %177

177:                                              ; preds = %175, %166
  %178 = load i32*, i32** @UserMsgCnt, align 8
  %179 = load i32, i32* %5, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32, i32* %178, i64 %180
  %182 = load i32, i32* %181, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %181, align 4
  %184 = load i32, i32* %6, align 4
  %185 = load i32*, i32** @UserMsgBytes, align 8
  %186 = load i32, i32* %5, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %185, i64 %187
  %189 = load i32, i32* %188, align 4
  %190 = add nsw i32 %189, %184
  store i32 %190, i32* %188, align 4
  br label %191

191:                                              ; preds = %177, %18
  ret void
}

declare dso_local i32 @conv_uid(i32) #1

declare dso_local %struct.TYPE_3__* @zmalloc0(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @preprocess_text(i64, i32) #1

declare dso_local i32 @compute_message_distinct_words(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
