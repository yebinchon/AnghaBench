; ModuleID = '/home/carl/AnghaBench/kphp-kdb/text/extr_text-import-dump.c_process_wall_row.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/text/extr_text-import-dump.c_process_wall_row.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_add_message = type { i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i64, i64 }

@I = common dso_local global i32* null, align 8
@wa_from_id = common dso_local global i64 0, align 8
@wa_to_id = common dso_local global i64 0, align 8
@list_id = common dso_local global i32 0, align 4
@L = common dso_local global i32* null, align 8
@wa_message = common dso_local global i64 0, align 8
@S = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [3 x i8] c"\\N\00", align 1
@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"has_media=%d for '%s'\0A\00", align 1
@LEV_TX_ADD_MESSAGE_MF = common dso_local global i64 0, align 8
@TXFS_MEDIA = common dso_local global i32 0, align 4
@LEV_TX_ADD_MESSAGE = common dso_local global i64 0, align 8
@TXFS_WALL = common dso_local global i64 0, align 8
@wa_to_shown = common dso_local global i64 0, align 8
@TXFS_SPAM = common dso_local global i32 0, align 4
@wa_id = common dso_local global i64 0, align 8
@wa_date = common dso_local global i64 0, align 8
@wa_ip = common dso_local global i64 0, align 8
@wa_port = common dso_local global i64 0, align 8
@wa_front = common dso_local global i64 0, align 8
@wa_hash = common dso_local global i64 0, align 8
@adj_rec = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @process_wall_row() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.lev_add_message*, align 8
  %8 = load i32*, i32** @I, align 8
  %9 = load i64, i64* @wa_from_id, align 8
  %10 = getelementptr inbounds i32, i32* %8, i64 %9
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %1, align 4
  store i32 0, i32* %4, align 4
  %12 = load i32*, i32** @I, align 8
  %13 = load i64, i64* @wa_to_id, align 8
  %14 = getelementptr inbounds i32, i32* %12, i64 %13
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* @list_id, align 4
  %16 = load i32, i32* @list_id, align 4
  %17 = call i64 @conv_uid(i32 %16)
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %0
  %20 = load i32, i32* @list_id, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i32, i32* %1, align 4
  %24 = icmp sle i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22, %19, %0
  br label %240

26:                                               ; preds = %22
  %27 = load i32*, i32** @L, align 8
  %28 = load i64, i64* @wa_message, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %30, 2
  br i1 %31, label %32, label %48

32:                                               ; preds = %26
  %33 = load i8**, i8*** @S, align 8
  %34 = load i64, i64* @wa_message, align 8
  %35 = getelementptr inbounds i8*, i8** %33, i64 %34
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @strcmp(i8* %36, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %48, label %39

39:                                               ; preds = %32
  %40 = load i32*, i32** @L, align 8
  %41 = load i64, i64* @wa_message, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  store i32 0, i32* %42, align 4
  %43 = load i8**, i8*** @S, align 8
  %44 = load i64, i64* @wa_message, align 8
  %45 = getelementptr inbounds i8*, i8** %43, i64 %44
  %46 = load i8*, i8** %45, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 0
  store i8 0, i8* %47, align 1
  br label %48

48:                                               ; preds = %39, %32, %26
  %49 = load i32*, i32** @L, align 8
  %50 = load i64, i64* @wa_message, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = icmp sge i32 %52, 5
  br i1 %53, label %54, label %96

54:                                               ; preds = %48
  %55 = load i8**, i8*** @S, align 8
  %56 = load i64, i64* @wa_message, align 8
  %57 = getelementptr inbounds i8*, i8** %55, i64 %56
  %58 = load i8*, i8** %57, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 0
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 91
  br i1 %62, label %63, label %96

63:                                               ; preds = %54
  %64 = load i8**, i8*** @S, align 8
  %65 = load i64, i64* @wa_message, align 8
  %66 = getelementptr inbounds i8*, i8** %64, i64 %65
  %67 = load i8*, i8** %66, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 1
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 91
  br i1 %71, label %72, label %96

72:                                               ; preds = %63
  %73 = load i8**, i8*** @S, align 8
  %74 = load i64, i64* @wa_message, align 8
  %75 = getelementptr inbounds i8*, i8** %73, i64 %74
  %76 = load i8*, i8** %75, align 8
  %77 = load i32*, i32** @L, align 8
  %78 = load i64, i64* @wa_message, align 8
  %79 = getelementptr inbounds i32, i32* %77, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @check_wall_embedded_media(i8* %76, i32 %80)
  store i32 %81, i32* %4, align 4
  %82 = load i32, i32* @verbosity, align 4
  %83 = icmp sgt i32 %82, 2
  br i1 %83, label %84, label %95

84:                                               ; preds = %72
  %85 = load i32, i32* %4, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %95, label %87

87:                                               ; preds = %84
  %88 = load i32, i32* @stderr, align 4
  %89 = load i32, i32* %4, align 4
  %90 = load i8**, i8*** @S, align 8
  %91 = load i64, i64* @wa_message, align 8
  %92 = getelementptr inbounds i8*, i8** %90, i64 %91
  %93 = load i8*, i8** %92, align 8
  %94 = call i32 @fprintf(i32 %88, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %89, i8* %93)
  br label %95

95:                                               ; preds = %87, %84, %72
  br label %96

96:                                               ; preds = %95, %63, %54, %48
  %97 = load i32*, i32** @L, align 8
  %98 = load i64, i64* @wa_message, align 8
  %99 = getelementptr inbounds i32, i32* %97, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = sext i32 %100 to i64
  %102 = add i64 64, %101
  %103 = add i64 %102, 1
  %104 = trunc i64 %103 to i32
  %105 = call %struct.lev_add_message* @write_alloc(i32 %104)
  store %struct.lev_add_message* %105, %struct.lev_add_message** %7, align 8
  %106 = load i32, i32* %4, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %115

108:                                              ; preds = %96
  %109 = load i64, i64* @LEV_TX_ADD_MESSAGE_MF, align 8
  %110 = load i32, i32* %4, align 4
  %111 = load i32, i32* @TXFS_MEDIA, align 4
  %112 = mul nsw i32 %110, %111
  %113 = sext i32 %112 to i64
  %114 = add nsw i64 %109, %113
  br label %117

115:                                              ; preds = %96
  %116 = load i64, i64* @LEV_TX_ADD_MESSAGE, align 8
  br label %117

117:                                              ; preds = %115, %108
  %118 = phi i64 [ %114, %108 ], [ %116, %115 ]
  %119 = load i64, i64* @TXFS_WALL, align 8
  %120 = add nsw i64 %118, %119
  %121 = load i32*, i32** @I, align 8
  %122 = load i64, i64* @wa_to_shown, align 8
  %123 = getelementptr inbounds i32, i32* %121, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %117
  %127 = load i32, i32* @TXFS_SPAM, align 4
  br label %129

128:                                              ; preds = %117
  br label %129

129:                                              ; preds = %128, %126
  %130 = phi i32 [ %127, %126 ], [ 0, %128 ]
  %131 = sext i32 %130 to i64
  %132 = add nsw i64 %120, %131
  %133 = load %struct.lev_add_message*, %struct.lev_add_message** %7, align 8
  %134 = getelementptr inbounds %struct.lev_add_message, %struct.lev_add_message* %133, i32 0, i32 11
  store i64 %132, i64* %134, align 8
  %135 = load i32, i32* @list_id, align 4
  %136 = load %struct.lev_add_message*, %struct.lev_add_message** %7, align 8
  %137 = getelementptr inbounds %struct.lev_add_message, %struct.lev_add_message* %136, i32 0, i32 0
  store i32 %135, i32* %137, align 8
  %138 = load i32*, i32** @I, align 8
  %139 = load i64, i64* @wa_id, align 8
  %140 = getelementptr inbounds i32, i32* %138, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.lev_add_message*, %struct.lev_add_message** %7, align 8
  %143 = getelementptr inbounds %struct.lev_add_message, %struct.lev_add_message* %142, i32 0, i32 1
  store i32 %141, i32* %143, align 4
  %144 = load i32, i32* %1, align 4
  %145 = load i32, i32* @list_id, align 4
  %146 = icmp eq i32 %144, %145
  br i1 %146, label %147, label %148

147:                                              ; preds = %129
  br label %150

148:                                              ; preds = %129
  %149 = load i32, i32* %1, align 4
  br label %150

150:                                              ; preds = %148, %147
  %151 = phi i32 [ 2000000000, %147 ], [ %149, %148 ]
  %152 = load %struct.lev_add_message*, %struct.lev_add_message** %7, align 8
  %153 = getelementptr inbounds %struct.lev_add_message, %struct.lev_add_message* %152, i32 0, i32 2
  store i32 %151, i32* %153, align 8
  %154 = load %struct.lev_add_message*, %struct.lev_add_message** %7, align 8
  %155 = getelementptr inbounds %struct.lev_add_message, %struct.lev_add_message* %154, i32 0, i32 10
  store i64 0, i64* %155, align 8
  %156 = load i32*, i32** @I, align 8
  %157 = load i64, i64* @wa_date, align 8
  %158 = getelementptr inbounds i32, i32* %156, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.lev_add_message*, %struct.lev_add_message** %7, align 8
  %161 = getelementptr inbounds %struct.lev_add_message, %struct.lev_add_message* %160, i32 0, i32 3
  store i32 %159, i32* %161, align 4
  %162 = load i32*, i32** @I, align 8
  %163 = load i64, i64* @wa_ip, align 8
  %164 = getelementptr inbounds i32, i32* %162, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.lev_add_message*, %struct.lev_add_message** %7, align 8
  %167 = getelementptr inbounds %struct.lev_add_message, %struct.lev_add_message* %166, i32 0, i32 4
  store i32 %165, i32* %167, align 8
  %168 = load i32*, i32** @I, align 8
  %169 = load i64, i64* @wa_port, align 8
  %170 = getelementptr inbounds i32, i32* %168, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.lev_add_message*, %struct.lev_add_message** %7, align 8
  %173 = getelementptr inbounds %struct.lev_add_message, %struct.lev_add_message* %172, i32 0, i32 5
  store i32 %171, i32* %173, align 4
  %174 = load i32*, i32** @I, align 8
  %175 = load i64, i64* @wa_front, align 8
  %176 = getelementptr inbounds i32, i32* %174, i64 %175
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.lev_add_message*, %struct.lev_add_message** %7, align 8
  %179 = getelementptr inbounds %struct.lev_add_message, %struct.lev_add_message* %178, i32 0, i32 6
  store i32 %177, i32* %179, align 8
  %180 = load i8**, i8*** @S, align 8
  %181 = load i64, i64* @wa_hash, align 8
  %182 = getelementptr inbounds i8*, i8** %180, i64 %181
  %183 = load i8*, i8** %182, align 8
  %184 = call i32 @strtoull(i8* %183, i32 0, i32 10)
  %185 = load %struct.lev_add_message*, %struct.lev_add_message** %7, align 8
  %186 = getelementptr inbounds %struct.lev_add_message, %struct.lev_add_message* %185, i32 0, i32 9
  store i32 %184, i32* %186, align 8
  %187 = load i32*, i32** @L, align 8
  %188 = load i64, i64* @wa_message, align 8
  %189 = getelementptr inbounds i32, i32* %187, i64 %188
  %190 = load i32, i32* %189, align 4
  store i32 %190, i32* %3, align 4
  %191 = load %struct.lev_add_message*, %struct.lev_add_message** %7, align 8
  %192 = getelementptr inbounds %struct.lev_add_message, %struct.lev_add_message* %191, i32 0, i32 7
  store i32 %190, i32* %192, align 4
  %193 = load %struct.lev_add_message*, %struct.lev_add_message** %7, align 8
  %194 = getelementptr inbounds %struct.lev_add_message, %struct.lev_add_message* %193, i32 0, i32 8
  %195 = load i8*, i8** %194, align 8
  store i8* %195, i8** %5, align 8
  %196 = load i8**, i8*** @S, align 8
  %197 = load i64, i64* @wa_message, align 8
  %198 = getelementptr inbounds i8*, i8** %196, i64 %197
  %199 = load i8*, i8** %198, align 8
  store i8* %199, i8** %6, align 8
  store i32 0, i32* %2, align 4
  br label %200

200:                                              ; preds = %232, %150
  %201 = load i32, i32* %2, align 4
  %202 = load i32, i32* %3, align 4
  %203 = icmp slt i32 %201, %202
  br i1 %203, label %204, label %235

204:                                              ; preds = %200
  %205 = load i8*, i8** %6, align 8
  %206 = load i32, i32* %2, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i8, i8* %205, i64 %207
  %209 = load i8, i8* %208, align 1
  %210 = zext i8 %209 to i32
  %211 = icmp slt i32 %210, 32
  br i1 %211, label %212, label %223

212:                                              ; preds = %204
  %213 = load i8*, i8** %6, align 8
  %214 = load i32, i32* %2, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i8, i8* %213, i64 %215
  %217 = load i8, i8* %216, align 1
  %218 = sext i8 %217 to i32
  %219 = icmp ne i32 %218, 9
  br i1 %219, label %220, label %223

220:                                              ; preds = %212
  %221 = load i8*, i8** %5, align 8
  %222 = getelementptr inbounds i8, i8* %221, i32 1
  store i8* %222, i8** %5, align 8
  store i8 32, i8* %221, align 1
  br label %231

223:                                              ; preds = %212, %204
  %224 = load i8*, i8** %6, align 8
  %225 = load i32, i32* %2, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i8, i8* %224, i64 %226
  %228 = load i8, i8* %227, align 1
  %229 = load i8*, i8** %5, align 8
  %230 = getelementptr inbounds i8, i8* %229, i32 1
  store i8* %230, i8** %5, align 8
  store i8 %228, i8* %229, align 1
  br label %231

231:                                              ; preds = %223, %220
  br label %232

232:                                              ; preds = %231
  %233 = load i32, i32* %2, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %2, align 4
  br label %200

235:                                              ; preds = %200
  %236 = load i8*, i8** %5, align 8
  %237 = getelementptr inbounds i8, i8* %236, i32 1
  store i8* %237, i8** %5, align 8
  store i8 0, i8* %236, align 1
  %238 = load i32, i32* @adj_rec, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* @adj_rec, align 4
  br label %240

240:                                              ; preds = %235, %25
  ret void
}

declare dso_local i64 @conv_uid(i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @check_wall_embedded_media(i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i8*) #1

declare dso_local %struct.lev_add_message* @write_alloc(i32) #1

declare dso_local i32 @strtoull(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
