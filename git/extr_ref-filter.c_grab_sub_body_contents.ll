; ModuleID = '/home/carl/AnghaBench/git/extr_ref-filter.c_grab_sub_body_contents.c'
source_filename = "/home/carl/AnghaBench/git/extr_ref-filter.c_grab_sub_body_contents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.used_atom = type { i8*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32, i32 }
%struct.strbuf = type { i32 }
%struct.atom_value = type { i8* }

@used_atom_cnt = common dso_local global i32 0, align 4
@used_atom = common dso_local global %struct.used_atom* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"subject\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"body\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"trailers\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"contents\00", align 1
@C_SUB = common dso_local global i64 0, align 8
@C_BODY_DEP = common dso_local global i64 0, align 8
@C_BODY = common dso_local global i64 0, align 8
@C_SIG = common dso_local global i64 0, align 8
@C_LINES = common dso_local global i64 0, align 8
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@C_TRAILERS = common dso_local global i64 0, align 8
@C_BARE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atom_value*, i32, i8*)* @grab_sub_body_contents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @grab_sub_body_contents(%struct.atom_value* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.atom_value*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.used_atom*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.atom_value*, align 8
  %18 = alloca %struct.strbuf, align 4
  %19 = alloca i8*, align 8
  %20 = alloca %struct.strbuf, align 4
  store %struct.atom_value* %0, %struct.atom_value** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  store i32 0, i32* %7, align 4
  br label %21

21:                                               ; preds = %205, %3
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @used_atom_cnt, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %208

25:                                               ; preds = %21
  %26 = load %struct.used_atom*, %struct.used_atom** @used_atom, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.used_atom, %struct.used_atom* %26, i64 %28
  store %struct.used_atom* %29, %struct.used_atom** %15, align 8
  %30 = load %struct.used_atom*, %struct.used_atom** %15, align 8
  %31 = getelementptr inbounds %struct.used_atom, %struct.used_atom* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  store i8* %32, i8** %16, align 8
  %33 = load %struct.atom_value*, %struct.atom_value** %4, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.atom_value, %struct.atom_value* %33, i64 %35
  store %struct.atom_value* %36, %struct.atom_value** %17, align 8
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = load i8*, i8** %16, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 42
  %46 = zext i1 %45 to i32
  %47 = icmp ne i32 %41, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %25
  br label %205

49:                                               ; preds = %25
  %50 = load i32, i32* %5, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load i8*, i8** %16, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %16, align 8
  br label %55

55:                                               ; preds = %52, %49
  %56 = load i8*, i8** %16, align 8
  %57 = call i64 @strcmp(i8* %56, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %72

59:                                               ; preds = %55
  %60 = load i8*, i8** %16, align 8
  %61 = call i64 @strcmp(i8* %60, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %59
  %64 = load i8*, i8** %16, align 8
  %65 = call i32 @starts_with(i8* %64, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %72, label %67

67:                                               ; preds = %63
  %68 = load i8*, i8** %16, align 8
  %69 = call i32 @starts_with(i8* %68, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %67
  br label %205

72:                                               ; preds = %67, %63, %59, %55
  %73 = load i8*, i8** %8, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %78, label %75

75:                                               ; preds = %72
  %76 = load i8*, i8** %6, align 8
  %77 = call i32 @find_subpos(i8* %76, i8** %8, i64* %11, i8** %9, i64* %12, i64* %13, i8** %10, i64* %14)
  br label %78

78:                                               ; preds = %75, %72
  %79 = load %struct.used_atom*, %struct.used_atom** %15, align 8
  %80 = getelementptr inbounds %struct.used_atom, %struct.used_atom* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @C_SUB, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %92

86:                                               ; preds = %78
  %87 = load i8*, i8** %8, align 8
  %88 = load i64, i64* %11, align 8
  %89 = call i8* @copy_subject(i8* %87, i64 %88)
  %90 = load %struct.atom_value*, %struct.atom_value** %17, align 8
  %91 = getelementptr inbounds %struct.atom_value, %struct.atom_value* %90, i32 0, i32 0
  store i8* %89, i8** %91, align 8
  br label %204

92:                                               ; preds = %78
  %93 = load %struct.used_atom*, %struct.used_atom** %15, align 8
  %94 = getelementptr inbounds %struct.used_atom, %struct.used_atom* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @C_BODY_DEP, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %106

100:                                              ; preds = %92
  %101 = load i8*, i8** %9, align 8
  %102 = load i64, i64* %12, align 8
  %103 = call i8* @xmemdupz(i8* %101, i64 %102)
  %104 = load %struct.atom_value*, %struct.atom_value** %17, align 8
  %105 = getelementptr inbounds %struct.atom_value, %struct.atom_value* %104, i32 0, i32 0
  store i8* %103, i8** %105, align 8
  br label %203

106:                                              ; preds = %92
  %107 = load %struct.used_atom*, %struct.used_atom** %15, align 8
  %108 = getelementptr inbounds %struct.used_atom, %struct.used_atom* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @C_BODY, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %120

114:                                              ; preds = %106
  %115 = load i8*, i8** %9, align 8
  %116 = load i64, i64* %13, align 8
  %117 = call i8* @xmemdupz(i8* %115, i64 %116)
  %118 = load %struct.atom_value*, %struct.atom_value** %17, align 8
  %119 = getelementptr inbounds %struct.atom_value, %struct.atom_value* %118, i32 0, i32 0
  store i8* %117, i8** %119, align 8
  br label %202

120:                                              ; preds = %106
  %121 = load %struct.used_atom*, %struct.used_atom** %15, align 8
  %122 = getelementptr inbounds %struct.used_atom, %struct.used_atom* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @C_SIG, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %134

128:                                              ; preds = %120
  %129 = load i8*, i8** %10, align 8
  %130 = load i64, i64* %14, align 8
  %131 = call i8* @xmemdupz(i8* %129, i64 %130)
  %132 = load %struct.atom_value*, %struct.atom_value** %17, align 8
  %133 = getelementptr inbounds %struct.atom_value, %struct.atom_value* %132, i32 0, i32 0
  store i8* %131, i8** %133, align 8
  br label %201

134:                                              ; preds = %120
  %135 = load %struct.used_atom*, %struct.used_atom** %15, align 8
  %136 = getelementptr inbounds %struct.used_atom, %struct.used_atom* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @C_LINES, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %142, label %166

142:                                              ; preds = %134
  %143 = bitcast %struct.strbuf* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %143, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %144 = load i64, i64* %12, align 8
  %145 = load i8*, i8** %9, align 8
  %146 = getelementptr inbounds i8, i8* %145, i64 %144
  %147 = load i64, i64* %14, align 8
  %148 = sub i64 0, %147
  %149 = getelementptr inbounds i8, i8* %146, i64 %148
  store i8* %149, i8** %19, align 8
  %150 = load i8*, i8** %8, align 8
  %151 = load i8*, i8** %19, align 8
  %152 = load i8*, i8** %8, align 8
  %153 = ptrtoint i8* %151 to i64
  %154 = ptrtoint i8* %152 to i64
  %155 = sub i64 %153, %154
  %156 = trunc i64 %155 to i32
  %157 = load %struct.used_atom*, %struct.used_atom** %15, align 8
  %158 = getelementptr inbounds %struct.used_atom, %struct.used_atom* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @append_lines(%struct.strbuf* %18, i8* %150, i32 %156, i32 %161)
  %163 = call i8* @strbuf_detach(%struct.strbuf* %18, i32* null)
  %164 = load %struct.atom_value*, %struct.atom_value** %17, align 8
  %165 = getelementptr inbounds %struct.atom_value, %struct.atom_value* %164, i32 0, i32 0
  store i8* %163, i8** %165, align 8
  br label %200

166:                                              ; preds = %134
  %167 = load %struct.used_atom*, %struct.used_atom** %15, align 8
  %168 = getelementptr inbounds %struct.used_atom, %struct.used_atom* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* @C_TRAILERS, align 8
  %173 = icmp eq i64 %171, %172
  br i1 %173, label %174, label %185

174:                                              ; preds = %166
  %175 = bitcast %struct.strbuf* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %175, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %176 = load i8*, i8** %8, align 8
  %177 = load %struct.used_atom*, %struct.used_atom** %15, align 8
  %178 = getelementptr inbounds %struct.used_atom, %struct.used_atom* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %179, i32 0, i32 1
  %181 = call i32 @format_trailers_from_commit(%struct.strbuf* %20, i8* %176, i32* %180)
  %182 = call i8* @strbuf_detach(%struct.strbuf* %20, i32* null)
  %183 = load %struct.atom_value*, %struct.atom_value** %17, align 8
  %184 = getelementptr inbounds %struct.atom_value, %struct.atom_value* %183, i32 0, i32 0
  store i8* %182, i8** %184, align 8
  br label %199

185:                                              ; preds = %166
  %186 = load %struct.used_atom*, %struct.used_atom** %15, align 8
  %187 = getelementptr inbounds %struct.used_atom, %struct.used_atom* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = load i64, i64* @C_BARE, align 8
  %192 = icmp eq i64 %190, %191
  br i1 %192, label %193, label %198

193:                                              ; preds = %185
  %194 = load i8*, i8** %8, align 8
  %195 = call i8* @xstrdup(i8* %194)
  %196 = load %struct.atom_value*, %struct.atom_value** %17, align 8
  %197 = getelementptr inbounds %struct.atom_value, %struct.atom_value* %196, i32 0, i32 0
  store i8* %195, i8** %197, align 8
  br label %198

198:                                              ; preds = %193, %185
  br label %199

199:                                              ; preds = %198, %174
  br label %200

200:                                              ; preds = %199, %142
  br label %201

201:                                              ; preds = %200, %128
  br label %202

202:                                              ; preds = %201, %114
  br label %203

203:                                              ; preds = %202, %100
  br label %204

204:                                              ; preds = %203, %86
  br label %205

205:                                              ; preds = %204, %71, %48
  %206 = load i32, i32* %7, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %7, align 4
  br label %21

208:                                              ; preds = %21
  ret void
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @starts_with(i8*, i8*) #1

declare dso_local i32 @find_subpos(i8*, i8**, i64*, i8**, i64*, i64*, i8**, i64*) #1

declare dso_local i8* @copy_subject(i8*, i64) #1

declare dso_local i8* @xmemdupz(i8*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @append_lines(%struct.strbuf*, i8*, i32, i32) #1

declare dso_local i8* @strbuf_detach(%struct.strbuf*, i32*) #1

declare dso_local i32 @format_trailers_from_commit(%struct.strbuf*, i8*, i32*) #1

declare dso_local i8* @xstrdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
