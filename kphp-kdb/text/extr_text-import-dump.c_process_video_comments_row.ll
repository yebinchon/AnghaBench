; ModuleID = '/home/carl/AnghaBench/kphp-kdb/text/extr_text-import-dump.c_process_video_comments_row.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/text/extr_text-import-dump.c_process_video_comments_row.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_add_message = type { i32, i32, i32, i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i64 }

@I = common dso_local global i8** null, align 8
@vc_from_id = common dso_local global i64 0, align 8
@vc_local_id = common dso_local global i64 0, align 8
@vc_owner_id = common dso_local global i64 0, align 8
@list_id = common dso_local global i32 0, align 4
@L = common dso_local global i32* null, align 8
@vc_message = common dso_local global i64 0, align 8
@S = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [3 x i8] c"\\N\00", align 1
@process_video_comments_row.kludge = internal global [32 x i8] zeroinitializer, align 16
@.str.1 = private unnamed_addr constant [9 x i8] c"\01ras %d\09\00", align 1
@LEV_TX_ADD_MESSAGE_EXT_ZF = common dso_local global i64 0, align 8
@LEV_TX_ADD_MESSAGE = common dso_local global i64 0, align 8
@vc_id = common dso_local global i64 0, align 8
@vc_video_id = common dso_local global i64 0, align 8
@vc_date = common dso_local global i64 0, align 8
@vc_ip = common dso_local global i64 0, align 8
@vc_port = common dso_local global i64 0, align 8
@vc_front = common dso_local global i64 0, align 8
@vc_ua_hash = common dso_local global i64 0, align 8
@adj_rec = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @process_video_comments_row() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.lev_add_message*, align 8
  %10 = load i8**, i8*** @I, align 8
  %11 = load i64, i64* @vc_from_id, align 8
  %12 = getelementptr inbounds i8*, i8** %10, i64 %11
  %13 = load i8*, i8** %12, align 8
  %14 = ptrtoint i8* %13 to i32
  store i32 %14, i32* %3, align 4
  %15 = load i8**, i8*** @I, align 8
  %16 = load i64, i64* @vc_local_id, align 8
  %17 = getelementptr inbounds i8*, i8** %15, i64 %16
  %18 = load i8*, i8** %17, align 8
  %19 = ptrtoint i8* %18 to i32
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i32 4, i32 0
  store i32 %23, i32* %5, align 4
  %24 = load i8**, i8*** @I, align 8
  %25 = load i64, i64* @vc_owner_id, align 8
  %26 = getelementptr inbounds i8*, i8** %24, i64 %25
  %27 = load i8*, i8** %26, align 8
  %28 = ptrtoint i8* %27 to i32
  store i32 %28, i32* @list_id, align 4
  %29 = load i32, i32* @list_id, align 4
  %30 = call i64 @conv_uid(i32 %29)
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %0
  %33 = load i32, i32* @list_id, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i32, i32* %3, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %35, %32, %0
  br label %229

39:                                               ; preds = %35
  %40 = load i32*, i32** @L, align 8
  %41 = load i64, i64* @vc_message, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %43, 2
  br i1 %44, label %45, label %61

45:                                               ; preds = %39
  %46 = load i8**, i8*** @S, align 8
  %47 = load i64, i64* @vc_message, align 8
  %48 = getelementptr inbounds i8*, i8** %46, i64 %47
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 @strcmp(i8* %49, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %61, label %52

52:                                               ; preds = %45
  %53 = load i32*, i32** @L, align 8
  %54 = load i64, i64* @vc_message, align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  store i32 0, i32* %55, align 4
  %56 = load i8**, i8*** @S, align 8
  %57 = load i64, i64* @vc_message, align 8
  %58 = getelementptr inbounds i8*, i8** %56, i64 %57
  %59 = load i8*, i8** %58, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 0
  store i8 0, i8* %60, align 1
  br label %61

61:                                               ; preds = %52, %45, %39
  %62 = load i32, i32* %3, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load i32, i32* @list_id, align 4
  %66 = call i32 @sprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @process_video_comments_row.kludge, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %65)
  br label %68

67:                                               ; preds = %61
  br label %68

68:                                               ; preds = %67, %64
  %69 = phi i32 [ %66, %64 ], [ 0, %67 ]
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %5, align 4
  %71 = sext i32 %70 to i64
  %72 = add i64 88, %71
  %73 = load i32, i32* %8, align 4
  %74 = sext i32 %73 to i64
  %75 = add i64 %72, %74
  %76 = load i32*, i32** @L, align 8
  %77 = load i64, i64* @vc_message, align 8
  %78 = getelementptr inbounds i32, i32* %76, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = sext i32 %79 to i64
  %81 = add i64 %75, %80
  %82 = add i64 %81, 1
  %83 = trunc i64 %82 to i32
  %84 = call %struct.lev_add_message* @write_alloc(i32 %83)
  store %struct.lev_add_message* %84, %struct.lev_add_message** %9, align 8
  %85 = load i32, i32* %5, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %68
  %88 = load i64, i64* @LEV_TX_ADD_MESSAGE_EXT_ZF, align 8
  %89 = add nsw i64 %88, 1
  br label %92

90:                                               ; preds = %68
  %91 = load i64, i64* @LEV_TX_ADD_MESSAGE, align 8
  br label %92

92:                                               ; preds = %90, %87
  %93 = phi i64 [ %89, %87 ], [ %91, %90 ]
  %94 = load %struct.lev_add_message*, %struct.lev_add_message** %9, align 8
  %95 = getelementptr inbounds %struct.lev_add_message, %struct.lev_add_message* %94, i32 0, i32 11
  store i64 %93, i64* %95, align 8
  %96 = load i32, i32* @list_id, align 4
  %97 = load %struct.lev_add_message*, %struct.lev_add_message** %9, align 8
  %98 = getelementptr inbounds %struct.lev_add_message, %struct.lev_add_message* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 8
  %99 = load i8**, i8*** @I, align 8
  %100 = load i64, i64* @vc_id, align 8
  %101 = getelementptr inbounds i8*, i8** %99, i64 %100
  %102 = load i8*, i8** %101, align 8
  %103 = load %struct.lev_add_message*, %struct.lev_add_message** %9, align 8
  %104 = getelementptr inbounds %struct.lev_add_message, %struct.lev_add_message* %103, i32 0, i32 10
  store i8* %102, i8** %104, align 8
  %105 = load i8**, i8*** @I, align 8
  %106 = load i64, i64* @vc_video_id, align 8
  %107 = getelementptr inbounds i8*, i8** %105, i64 %106
  %108 = load i8*, i8** %107, align 8
  %109 = load %struct.lev_add_message*, %struct.lev_add_message** %9, align 8
  %110 = getelementptr inbounds %struct.lev_add_message, %struct.lev_add_message* %109, i32 0, i32 9
  store i8* %108, i8** %110, align 8
  %111 = load i32, i32* %3, align 4
  %112 = icmp sge i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %92
  %114 = load i32, i32* %3, align 4
  br label %118

115:                                              ; preds = %92
  %116 = load i32, i32* %3, align 4
  %117 = sub nsw i32 0, %116
  br label %118

118:                                              ; preds = %115, %113
  %119 = phi i32 [ %114, %113 ], [ %117, %115 ]
  %120 = load %struct.lev_add_message*, %struct.lev_add_message** %9, align 8
  %121 = getelementptr inbounds %struct.lev_add_message, %struct.lev_add_message* %120, i32 0, i32 1
  store i32 %119, i32* %121, align 4
  %122 = load i8**, i8*** @I, align 8
  %123 = load i64, i64* @vc_date, align 8
  %124 = getelementptr inbounds i8*, i8** %122, i64 %123
  %125 = load i8*, i8** %124, align 8
  %126 = load %struct.lev_add_message*, %struct.lev_add_message** %9, align 8
  %127 = getelementptr inbounds %struct.lev_add_message, %struct.lev_add_message* %126, i32 0, i32 8
  store i8* %125, i8** %127, align 8
  %128 = load i8**, i8*** @I, align 8
  %129 = load i64, i64* @vc_ip, align 8
  %130 = getelementptr inbounds i8*, i8** %128, i64 %129
  %131 = load i8*, i8** %130, align 8
  %132 = load %struct.lev_add_message*, %struct.lev_add_message** %9, align 8
  %133 = getelementptr inbounds %struct.lev_add_message, %struct.lev_add_message* %132, i32 0, i32 7
  store i8* %131, i8** %133, align 8
  %134 = load i8**, i8*** @I, align 8
  %135 = load i64, i64* @vc_port, align 8
  %136 = getelementptr inbounds i8*, i8** %134, i64 %135
  %137 = load i8*, i8** %136, align 8
  %138 = load %struct.lev_add_message*, %struct.lev_add_message** %9, align 8
  %139 = getelementptr inbounds %struct.lev_add_message, %struct.lev_add_message* %138, i32 0, i32 6
  store i8* %137, i8** %139, align 8
  %140 = load i8**, i8*** @I, align 8
  %141 = load i64, i64* @vc_front, align 8
  %142 = getelementptr inbounds i8*, i8** %140, i64 %141
  %143 = load i8*, i8** %142, align 8
  %144 = load %struct.lev_add_message*, %struct.lev_add_message** %9, align 8
  %145 = getelementptr inbounds %struct.lev_add_message, %struct.lev_add_message* %144, i32 0, i32 5
  store i8* %143, i8** %145, align 8
  %146 = load i8**, i8*** @S, align 8
  %147 = load i64, i64* @vc_ua_hash, align 8
  %148 = getelementptr inbounds i8*, i8** %146, i64 %147
  %149 = load i8*, i8** %148, align 8
  %150 = call i32 @strtoull(i8* %149, i32 0, i32 10)
  %151 = load %struct.lev_add_message*, %struct.lev_add_message** %9, align 8
  %152 = getelementptr inbounds %struct.lev_add_message, %struct.lev_add_message* %151, i32 0, i32 4
  store i32 %150, i32* %152, align 8
  %153 = load i32*, i32** @L, align 8
  %154 = load i64, i64* @vc_message, align 8
  %155 = getelementptr inbounds i32, i32* %153, i64 %154
  %156 = load i32, i32* %155, align 4
  store i32 %156, i32* %2, align 4
  %157 = load i32, i32* %8, align 4
  %158 = load i32, i32* %2, align 4
  %159 = add nsw i32 %157, %158
  %160 = load %struct.lev_add_message*, %struct.lev_add_message** %9, align 8
  %161 = getelementptr inbounds %struct.lev_add_message, %struct.lev_add_message* %160, i32 0, i32 2
  store i32 %159, i32* %161, align 8
  %162 = load %struct.lev_add_message*, %struct.lev_add_message** %9, align 8
  %163 = getelementptr inbounds %struct.lev_add_message, %struct.lev_add_message* %162, i32 0, i32 3
  %164 = load i8*, i8** %163, align 8
  store i8* %164, i8** %6, align 8
  %165 = load i32, i32* %5, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %173

167:                                              ; preds = %118
  %168 = load i32, i32* %4, align 4
  %169 = load i8*, i8** %6, align 8
  %170 = bitcast i8* %169 to i32*
  store i32 %168, i32* %170, align 4
  %171 = load i8*, i8** %6, align 8
  %172 = getelementptr inbounds i8, i8* %171, i64 4
  store i8* %172, i8** %6, align 8
  br label %173

173:                                              ; preds = %167, %118
  %174 = load i32, i32* %8, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %184

176:                                              ; preds = %173
  %177 = load i8*, i8** %6, align 8
  %178 = load i32, i32* %8, align 4
  %179 = call i32 @memcpy(i8* %177, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @process_video_comments_row.kludge, i64 0, i64 0), i32 %178)
  %180 = load i32, i32* %8, align 4
  %181 = load i8*, i8** %6, align 8
  %182 = sext i32 %180 to i64
  %183 = getelementptr inbounds i8, i8* %181, i64 %182
  store i8* %183, i8** %6, align 8
  br label %184

184:                                              ; preds = %176, %173
  %185 = load i8**, i8*** @S, align 8
  %186 = load i64, i64* @vc_message, align 8
  %187 = getelementptr inbounds i8*, i8** %185, i64 %186
  %188 = load i8*, i8** %187, align 8
  store i8* %188, i8** %7, align 8
  store i32 0, i32* %1, align 4
  br label %189

189:                                              ; preds = %221, %184
  %190 = load i32, i32* %1, align 4
  %191 = load i32, i32* %2, align 4
  %192 = icmp slt i32 %190, %191
  br i1 %192, label %193, label %224

193:                                              ; preds = %189
  %194 = load i8*, i8** %7, align 8
  %195 = load i32, i32* %1, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i8, i8* %194, i64 %196
  %198 = load i8, i8* %197, align 1
  %199 = zext i8 %198 to i32
  %200 = icmp slt i32 %199, 32
  br i1 %200, label %201, label %212

201:                                              ; preds = %193
  %202 = load i8*, i8** %7, align 8
  %203 = load i32, i32* %1, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i8, i8* %202, i64 %204
  %206 = load i8, i8* %205, align 1
  %207 = sext i8 %206 to i32
  %208 = icmp ne i32 %207, 9
  br i1 %208, label %209, label %212

209:                                              ; preds = %201
  %210 = load i8*, i8** %6, align 8
  %211 = getelementptr inbounds i8, i8* %210, i32 1
  store i8* %211, i8** %6, align 8
  store i8 32, i8* %210, align 1
  br label %220

212:                                              ; preds = %201, %193
  %213 = load i8*, i8** %7, align 8
  %214 = load i32, i32* %1, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i8, i8* %213, i64 %215
  %217 = load i8, i8* %216, align 1
  %218 = load i8*, i8** %6, align 8
  %219 = getelementptr inbounds i8, i8* %218, i32 1
  store i8* %219, i8** %6, align 8
  store i8 %217, i8* %218, align 1
  br label %220

220:                                              ; preds = %212, %209
  br label %221

221:                                              ; preds = %220
  %222 = load i32, i32* %1, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %1, align 4
  br label %189

224:                                              ; preds = %189
  %225 = load i8*, i8** %6, align 8
  %226 = getelementptr inbounds i8, i8* %225, i32 1
  store i8* %226, i8** %6, align 8
  store i8 0, i8* %225, align 1
  %227 = load i32, i32* @adj_rec, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* @adj_rec, align 4
  br label %229

229:                                              ; preds = %224, %38
  ret void
}

declare dso_local i64 @conv_uid(i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local %struct.lev_add_message* @write_alloc(i32) #1

declare dso_local i32 @strtoull(i8*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
