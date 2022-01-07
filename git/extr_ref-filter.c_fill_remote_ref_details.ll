; ModuleID = '/home/carl/AnghaBench/git/extr_ref-filter.c_fill_remote_ref_details.c'
source_filename = "/home/carl/AnghaBench/git/extr_ref-filter.c_fill_remote_ref_details.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i32, i32, i32 }
%struct.used_atom = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32, i32, i32 }
%struct.branch = type { i32 }

@RR_REF = common dso_local global i64 0, align 8
@RR_TRACK = common dso_local global i64 0, align 8
@AHEAD_BEHIND_FULL = common dso_local global i32 0, align 4
@msgs = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"[%s]\00", align 1
@RR_TRACKSHORT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"<>\00", align 1
@RR_REMOTE_NAME = common dso_local global i64 0, align 8
@RR_REMOTE_REF = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [20 x i8] c"unhandled RR_* enum\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.used_atom*, i8*, %struct.branch*, i8**)* @fill_remote_ref_details to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_remote_ref_details(%struct.used_atom* %0, i8* %1, %struct.branch* %2, i8** %3) #0 {
  %5 = alloca %struct.used_atom*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.branch*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store %struct.used_atom* %0, %struct.used_atom** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.branch* %2, %struct.branch** %7, align 8
  store i8** %3, i8*** %8, align 8
  %16 = load %struct.used_atom*, %struct.used_atom** %5, align 8
  %17 = getelementptr inbounds %struct.used_atom, %struct.used_atom* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @RR_REF, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %31

23:                                               ; preds = %4
  %24 = load %struct.used_atom*, %struct.used_atom** %5, align 8
  %25 = getelementptr inbounds %struct.used_atom, %struct.used_atom* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 3
  %28 = load i8*, i8** %6, align 8
  %29 = call i8* @show_ref(i32* %27, i8* %28)
  %30 = load i8**, i8*** %8, align 8
  store i8* %29, i8** %30, align 8
  br label %228

31:                                               ; preds = %4
  %32 = load %struct.used_atom*, %struct.used_atom** %5, align 8
  %33 = getelementptr inbounds %struct.used_atom, %struct.used_atom* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @RR_TRACK, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %117

39:                                               ; preds = %31
  %40 = load %struct.branch*, %struct.branch** %7, align 8
  %41 = load %struct.used_atom*, %struct.used_atom** %5, align 8
  %42 = getelementptr inbounds %struct.used_atom, %struct.used_atom* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @AHEAD_BEHIND_FULL, align 4
  %47 = call i64 @stat_tracking_info(%struct.branch* %40, i32* %9, i32* %10, i32* null, i32 %45, i32 %46)
  %48 = icmp slt i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %39
  %50 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @msgs, i32 0, i32 0), align 8
  %51 = call i8* @xstrdup(i8* %50)
  %52 = load i8**, i8*** %8, align 8
  store i8* %51, i8** %52, align 8
  br label %93

53:                                               ; preds = %39
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %53
  %57 = load i32, i32* %10, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %56
  %60 = call i8* @xstrdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %61 = load i8**, i8*** %8, align 8
  store i8* %60, i8** %61, align 8
  br label %92

62:                                               ; preds = %56, %53
  %63 = load i32, i32* %9, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %72, label %65

65:                                               ; preds = %62
  %66 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @msgs, i32 0, i32 3), align 8
  %67 = sext i32 %66 to i64
  %68 = inttoptr i64 %67 to i8*
  %69 = load i32, i32* %10, align 4
  %70 = call i8* (i8*, ...) @xstrfmt(i8* %68, i32 %69)
  %71 = load i8**, i8*** %8, align 8
  store i8* %70, i8** %71, align 8
  br label %91

72:                                               ; preds = %62
  %73 = load i32, i32* %10, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %82, label %75

75:                                               ; preds = %72
  %76 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @msgs, i32 0, i32 2), align 4
  %77 = sext i32 %76 to i64
  %78 = inttoptr i64 %77 to i8*
  %79 = load i32, i32* %9, align 4
  %80 = call i8* (i8*, ...) @xstrfmt(i8* %78, i32 %79)
  %81 = load i8**, i8*** %8, align 8
  store i8* %80, i8** %81, align 8
  br label %90

82:                                               ; preds = %72
  %83 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @msgs, i32 0, i32 1), align 8
  %84 = sext i32 %83 to i64
  %85 = inttoptr i64 %84 to i8*
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* %10, align 4
  %88 = call i8* (i8*, ...) @xstrfmt(i8* %85, i32 %86, i32 %87)
  %89 = load i8**, i8*** %8, align 8
  store i8* %88, i8** %89, align 8
  br label %90

90:                                               ; preds = %82, %75
  br label %91

91:                                               ; preds = %90, %65
  br label %92

92:                                               ; preds = %91, %59
  br label %93

93:                                               ; preds = %92, %49
  %94 = load %struct.used_atom*, %struct.used_atom** %5, align 8
  %95 = getelementptr inbounds %struct.used_atom, %struct.used_atom* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %116, label %100

100:                                              ; preds = %93
  %101 = load i8**, i8*** %8, align 8
  %102 = getelementptr inbounds i8*, i8** %101, i64 0
  %103 = load i8*, i8** %102, align 8
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %116

107:                                              ; preds = %100
  %108 = load i8**, i8*** %8, align 8
  %109 = load i8*, i8** %108, align 8
  store i8* %109, i8** %11, align 8
  %110 = load i8**, i8*** %8, align 8
  %111 = load i8*, i8** %110, align 8
  %112 = call i8* (i8*, ...) @xstrfmt(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %111)
  %113 = load i8**, i8*** %8, align 8
  store i8* %112, i8** %113, align 8
  %114 = load i8*, i8** %11, align 8
  %115 = call i32 @free(i8* %114)
  br label %116

116:                                              ; preds = %107, %100, %93
  br label %227

117:                                              ; preds = %31
  %118 = load %struct.used_atom*, %struct.used_atom** %5, align 8
  %119 = getelementptr inbounds %struct.used_atom, %struct.used_atom* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @RR_TRACKSHORT, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %165

125:                                              ; preds = %117
  %126 = load %struct.branch*, %struct.branch** %7, align 8
  %127 = load %struct.used_atom*, %struct.used_atom** %5, align 8
  %128 = getelementptr inbounds %struct.used_atom, %struct.used_atom* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @AHEAD_BEHIND_FULL, align 4
  %133 = call i64 @stat_tracking_info(%struct.branch* %126, i32* %9, i32* %10, i32* null, i32 %131, i32 %132)
  %134 = icmp slt i64 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %125
  %136 = call i8* @xstrdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %137 = load i8**, i8*** %8, align 8
  store i8* %136, i8** %137, align 8
  br label %228

138:                                              ; preds = %125
  %139 = load i32, i32* %9, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %147, label %141

141:                                              ; preds = %138
  %142 = load i32, i32* %10, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %147, label %144

144:                                              ; preds = %141
  %145 = call i8* @xstrdup(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %146 = load i8**, i8*** %8, align 8
  store i8* %145, i8** %146, align 8
  br label %164

147:                                              ; preds = %141, %138
  %148 = load i32, i32* %9, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %153, label %150

150:                                              ; preds = %147
  %151 = call i8* @xstrdup(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %152 = load i8**, i8*** %8, align 8
  store i8* %151, i8** %152, align 8
  br label %163

153:                                              ; preds = %147
  %154 = load i32, i32* %10, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %159, label %156

156:                                              ; preds = %153
  %157 = call i8* @xstrdup(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %158 = load i8**, i8*** %8, align 8
  store i8* %157, i8** %158, align 8
  br label %162

159:                                              ; preds = %153
  %160 = call i8* @xstrdup(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %161 = load i8**, i8*** %8, align 8
  store i8* %160, i8** %161, align 8
  br label %162

162:                                              ; preds = %159, %156
  br label %163

163:                                              ; preds = %162, %150
  br label %164

164:                                              ; preds = %163, %144
  br label %226

165:                                              ; preds = %117
  %166 = load %struct.used_atom*, %struct.used_atom** %5, align 8
  %167 = getelementptr inbounds %struct.used_atom, %struct.used_atom* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* @RR_REMOTE_NAME, align 8
  %172 = icmp eq i64 %170, %171
  br i1 %172, label %173, label %197

173:                                              ; preds = %165
  %174 = load %struct.used_atom*, %struct.used_atom** %5, align 8
  %175 = getelementptr inbounds %struct.used_atom, %struct.used_atom* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 8
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %183

180:                                              ; preds = %173
  %181 = load %struct.branch*, %struct.branch** %7, align 8
  %182 = call i8* @pushremote_for_branch(%struct.branch* %181, i32* %12)
  br label %186

183:                                              ; preds = %173
  %184 = load %struct.branch*, %struct.branch** %7, align 8
  %185 = call i8* @remote_for_branch(%struct.branch* %184, i32* %12)
  br label %186

186:                                              ; preds = %183, %180
  %187 = phi i8* [ %182, %180 ], [ %185, %183 ]
  store i8* %187, i8** %13, align 8
  %188 = load i32, i32* %12, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %192

190:                                              ; preds = %186
  %191 = load i8*, i8** %13, align 8
  br label %193

192:                                              ; preds = %186
  br label %193

193:                                              ; preds = %192, %190
  %194 = phi i8* [ %191, %190 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %192 ]
  %195 = call i8* @xstrdup(i8* %194)
  %196 = load i8**, i8*** %8, align 8
  store i8* %195, i8** %196, align 8
  br label %225

197:                                              ; preds = %165
  %198 = load %struct.used_atom*, %struct.used_atom** %5, align 8
  %199 = getelementptr inbounds %struct.used_atom, %struct.used_atom* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = load i64, i64* @RR_REMOTE_REF, align 8
  %204 = icmp eq i64 %202, %203
  br i1 %204, label %205, label %222

205:                                              ; preds = %197
  %206 = load %struct.branch*, %struct.branch** %7, align 8
  %207 = load %struct.used_atom*, %struct.used_atom** %5, align 8
  %208 = getelementptr inbounds %struct.used_atom, %struct.used_atom* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 8
  %212 = call i8* @remote_ref_for_branch(%struct.branch* %206, i32 %211, i32* %14)
  store i8* %212, i8** %15, align 8
  %213 = load i32, i32* %14, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %217

215:                                              ; preds = %205
  %216 = load i8*, i8** %15, align 8
  br label %218

217:                                              ; preds = %205
  br label %218

218:                                              ; preds = %217, %215
  %219 = phi i8* [ %216, %215 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %217 ]
  %220 = call i8* @xstrdup(i8* %219)
  %221 = load i8**, i8*** %8, align 8
  store i8* %220, i8** %221, align 8
  br label %224

222:                                              ; preds = %197
  %223 = call i32 @BUG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  br label %224

224:                                              ; preds = %222, %218
  br label %225

225:                                              ; preds = %224, %193
  br label %226

226:                                              ; preds = %225, %164
  br label %227

227:                                              ; preds = %226, %116
  br label %228

228:                                              ; preds = %135, %227, %23
  ret void
}

declare dso_local i8* @show_ref(i32*, i8*) #1

declare dso_local i64 @stat_tracking_info(%struct.branch*, i32*, i32*, i32*, i32, i32) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i8* @xstrfmt(i8*, ...) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @pushremote_for_branch(%struct.branch*, i32*) #1

declare dso_local i8* @remote_for_branch(%struct.branch*, i32*) #1

declare dso_local i8* @remote_ref_for_branch(%struct.branch*, i32, i32*) #1

declare dso_local i32 @BUG(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
