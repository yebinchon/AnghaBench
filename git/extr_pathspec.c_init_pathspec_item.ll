; ModuleID = '/home/carl/AnghaBench/git/extr_pathspec.c_init_pathspec_item.c'
source_filename = "/home/carl/AnghaBench/git/extr_pathspec.c_init_pathspec_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.pathspec_item = type { i32, i8*, i32, i32, i32, i32, i8*, i64, i32*, i32* }

@PATHSPEC_LITERAL_PATH = common dso_local global i32 0, align 4
@PATHSPEC_LITERAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"'prefix' magic is supposed to be used at worktree's root\00", align 1
@PATHSPEC_GLOB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"%s: 'literal' and 'glob' are incompatible\00", align 1
@PATHSPEC_FROMTOP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"%s: '%s' is outside repository\00", align 1
@PATHSPEC_PREFIX_ORIGIN = common dso_local global i32 0, align 4
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@PATHSPEC_ONESTAR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"error initializing pathspec_item\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pathspec_item*, i32, i8*, i32, i8*)* @init_pathspec_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_pathspec_item(%struct.pathspec_item* %0, i32 %1, i8* %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.pathspec_item*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.strbuf, align 4
  store %struct.pathspec_item* %0, %struct.pathspec_item** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %17 = load i8*, i8** %10, align 8
  store i8* %17, i8** %13, align 8
  store i32 -1, i32* %15, align 4
  %18 = load %struct.pathspec_item*, %struct.pathspec_item** %6, align 8
  %19 = getelementptr inbounds %struct.pathspec_item, %struct.pathspec_item* %18, i32 0, i32 9
  store i32* null, i32** %19, align 8
  %20 = load %struct.pathspec_item*, %struct.pathspec_item** %6, align 8
  %21 = getelementptr inbounds %struct.pathspec_item, %struct.pathspec_item* %20, i32 0, i32 8
  store i32* null, i32** %21, align 8
  %22 = load %struct.pathspec_item*, %struct.pathspec_item** %6, align 8
  %23 = getelementptr inbounds %struct.pathspec_item, %struct.pathspec_item* %22, i32 0, i32 7
  store i64 0, i64* %23, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @PATHSPEC_LITERAL_PATH, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %5
  %29 = load i32, i32* @PATHSPEC_LITERAL, align 4
  store i32 %29, i32* %11, align 4
  br label %41

30:                                               ; preds = %5
  %31 = load %struct.pathspec_item*, %struct.pathspec_item** %6, align 8
  %32 = load i8*, i8** %10, align 8
  %33 = call i8* @parse_element_magic(i32* %12, i32* %15, %struct.pathspec_item* %31, i8* %32)
  store i8* %33, i8** %13, align 8
  %34 = load i32, i32* %12, align 4
  %35 = load i32, i32* %11, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %12, align 4
  %38 = call i32 @get_global_magic(i32 %37)
  %39 = load i32, i32* %11, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %11, align 4
  br label %41

41:                                               ; preds = %30, %28
  %42 = load i32, i32* %11, align 4
  %43 = load %struct.pathspec_item*, %struct.pathspec_item** %6, align 8
  %44 = getelementptr inbounds %struct.pathspec_item, %struct.pathspec_item* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load i32, i32* %15, align 4
  %46 = icmp sge i32 %45, 0
  br i1 %46, label %47, label %60

47:                                               ; preds = %41
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %58, label %50

50:                                               ; preds = %47
  %51 = load i8*, i8** %8, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %60

53:                                               ; preds = %50
  %54 = load i8*, i8** %8, align 8
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %53, %47
  %59 = call i32 @BUG(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  br label %60

60:                                               ; preds = %58, %53, %50, %41
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* @PATHSPEC_LITERAL, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %60
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* @PATHSPEC_GLOB, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %65
  %71 = call i32 @_(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %72 = load i8*, i8** %10, align 8
  %73 = call i32 (i32, i8*, ...) @die(i32 %71, i8* %72)
  br label %74

74:                                               ; preds = %70, %65, %60
  %75 = load i32, i32* %15, align 4
  %76 = icmp sge i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %74
  %78 = load i8*, i8** %13, align 8
  %79 = call i8* @xstrdup(i8* %78)
  store i8* %79, i8** %14, align 8
  %80 = load i32, i32* %15, align 4
  store i32 %80, i32* %9, align 4
  br label %103

81:                                               ; preds = %74
  %82 = load i32, i32* %11, align 4
  %83 = load i32, i32* @PATHSPEC_FROMTOP, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %81
  %87 = load i8*, i8** %13, align 8
  %88 = call i8* @xstrdup(i8* %87)
  store i8* %88, i8** %14, align 8
  store i32 0, i32* %9, align 4
  br label %102

89:                                               ; preds = %81
  %90 = load i8*, i8** %8, align 8
  %91 = load i32, i32* %9, align 4
  %92 = load i8*, i8** %13, align 8
  %93 = call i8* @prefix_path_gently(i8* %90, i32 %91, i32* %9, i8* %92)
  store i8* %93, i8** %14, align 8
  %94 = load i8*, i8** %14, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %101, label %96

96:                                               ; preds = %89
  %97 = call i32 @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %98 = load i8*, i8** %10, align 8
  %99 = load i8*, i8** %13, align 8
  %100 = call i32 (i32, i8*, ...) @die(i32 %97, i8* %98, i8* %99)
  br label %101

101:                                              ; preds = %96, %89
  br label %102

102:                                              ; preds = %101, %86
  br label %103

103:                                              ; preds = %102, %77
  %104 = load i8*, i8** %14, align 8
  %105 = load %struct.pathspec_item*, %struct.pathspec_item** %6, align 8
  %106 = getelementptr inbounds %struct.pathspec_item, %struct.pathspec_item* %105, i32 0, i32 1
  store i8* %104, i8** %106, align 8
  %107 = load %struct.pathspec_item*, %struct.pathspec_item** %6, align 8
  %108 = getelementptr inbounds %struct.pathspec_item, %struct.pathspec_item* %107, i32 0, i32 1
  %109 = load i8*, i8** %108, align 8
  %110 = call i32 @strlen(i8* %109)
  %111 = load %struct.pathspec_item*, %struct.pathspec_item** %6, align 8
  %112 = getelementptr inbounds %struct.pathspec_item, %struct.pathspec_item* %111, i32 0, i32 2
  store i32 %110, i32* %112, align 8
  %113 = load i32, i32* %9, align 4
  %114 = load %struct.pathspec_item*, %struct.pathspec_item** %6, align 8
  %115 = getelementptr inbounds %struct.pathspec_item, %struct.pathspec_item* %114, i32 0, i32 3
  store i32 %113, i32* %115, align 4
  %116 = load i32, i32* %7, align 4
  %117 = load i32, i32* @PATHSPEC_PREFIX_ORIGIN, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %133

120:                                              ; preds = %103
  %121 = call i32 (...) @get_literal_global()
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %133, label %123

123:                                              ; preds = %120
  %124 = bitcast %struct.strbuf* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %124, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %125 = load i32, i32* %9, align 4
  %126 = load i32, i32* %12, align 4
  %127 = call i32 @prefix_magic(%struct.strbuf* %16, i32 %125, i32 %126)
  %128 = load i8*, i8** %14, align 8
  %129 = call i32 @strbuf_addstr(%struct.strbuf* %16, i8* %128)
  %130 = call i8* @strbuf_detach(%struct.strbuf* %16, i32* null)
  %131 = load %struct.pathspec_item*, %struct.pathspec_item** %6, align 8
  %132 = getelementptr inbounds %struct.pathspec_item, %struct.pathspec_item* %131, i32 0, i32 6
  store i8* %130, i8** %132, align 8
  br label %138

133:                                              ; preds = %120, %103
  %134 = load i8*, i8** %10, align 8
  %135 = call i8* @xstrdup(i8* %134)
  %136 = load %struct.pathspec_item*, %struct.pathspec_item** %6, align 8
  %137 = getelementptr inbounds %struct.pathspec_item, %struct.pathspec_item* %136, i32 0, i32 6
  store i8* %135, i8** %137, align 8
  br label %138

138:                                              ; preds = %133, %123
  %139 = load i32, i32* %11, align 4
  %140 = load i32, i32* @PATHSPEC_LITERAL, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %149

143:                                              ; preds = %138
  %144 = load %struct.pathspec_item*, %struct.pathspec_item** %6, align 8
  %145 = getelementptr inbounds %struct.pathspec_item, %struct.pathspec_item* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.pathspec_item*, %struct.pathspec_item** %6, align 8
  %148 = getelementptr inbounds %struct.pathspec_item, %struct.pathspec_item* %147, i32 0, i32 4
  store i32 %146, i32* %148, align 8
  br label %166

149:                                              ; preds = %138
  %150 = load %struct.pathspec_item*, %struct.pathspec_item** %6, align 8
  %151 = getelementptr inbounds %struct.pathspec_item, %struct.pathspec_item* %150, i32 0, i32 1
  %152 = load i8*, i8** %151, align 8
  %153 = call i32 @simple_length(i8* %152)
  %154 = load %struct.pathspec_item*, %struct.pathspec_item** %6, align 8
  %155 = getelementptr inbounds %struct.pathspec_item, %struct.pathspec_item* %154, i32 0, i32 4
  store i32 %153, i32* %155, align 8
  %156 = load %struct.pathspec_item*, %struct.pathspec_item** %6, align 8
  %157 = getelementptr inbounds %struct.pathspec_item, %struct.pathspec_item* %156, i32 0, i32 4
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* %9, align 4
  %160 = icmp slt i32 %158, %159
  br i1 %160, label %161, label %165

161:                                              ; preds = %149
  %162 = load i32, i32* %9, align 4
  %163 = load %struct.pathspec_item*, %struct.pathspec_item** %6, align 8
  %164 = getelementptr inbounds %struct.pathspec_item, %struct.pathspec_item* %163, i32 0, i32 4
  store i32 %162, i32* %164, align 8
  br label %165

165:                                              ; preds = %161, %149
  br label %166

166:                                              ; preds = %165, %143
  %167 = load %struct.pathspec_item*, %struct.pathspec_item** %6, align 8
  %168 = getelementptr inbounds %struct.pathspec_item, %struct.pathspec_item* %167, i32 0, i32 5
  store i32 0, i32* %168, align 4
  %169 = load i32, i32* %11, align 4
  %170 = load i32, i32* @PATHSPEC_GLOB, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %166
  br label %213

174:                                              ; preds = %166
  %175 = load %struct.pathspec_item*, %struct.pathspec_item** %6, align 8
  %176 = getelementptr inbounds %struct.pathspec_item, %struct.pathspec_item* %175, i32 0, i32 4
  %177 = load i32, i32* %176, align 8
  %178 = load %struct.pathspec_item*, %struct.pathspec_item** %6, align 8
  %179 = getelementptr inbounds %struct.pathspec_item, %struct.pathspec_item* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 8
  %181 = icmp slt i32 %177, %180
  br i1 %181, label %182, label %212

182:                                              ; preds = %174
  %183 = load %struct.pathspec_item*, %struct.pathspec_item** %6, align 8
  %184 = getelementptr inbounds %struct.pathspec_item, %struct.pathspec_item* %183, i32 0, i32 1
  %185 = load i8*, i8** %184, align 8
  %186 = load %struct.pathspec_item*, %struct.pathspec_item** %6, align 8
  %187 = getelementptr inbounds %struct.pathspec_item, %struct.pathspec_item* %186, i32 0, i32 4
  %188 = load i32, i32* %187, align 8
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i8, i8* %185, i64 %189
  %191 = load i8, i8* %190, align 1
  %192 = sext i8 %191 to i32
  %193 = icmp eq i32 %192, 42
  br i1 %193, label %194, label %212

194:                                              ; preds = %182
  %195 = load %struct.pathspec_item*, %struct.pathspec_item** %6, align 8
  %196 = getelementptr inbounds %struct.pathspec_item, %struct.pathspec_item* %195, i32 0, i32 1
  %197 = load i8*, i8** %196, align 8
  %198 = load %struct.pathspec_item*, %struct.pathspec_item** %6, align 8
  %199 = getelementptr inbounds %struct.pathspec_item, %struct.pathspec_item* %198, i32 0, i32 4
  %200 = load i32, i32* %199, align 8
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i8, i8* %197, i64 %201
  %203 = getelementptr inbounds i8, i8* %202, i64 1
  %204 = call i64 @no_wildcard(i8* %203)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %212

206:                                              ; preds = %194
  %207 = load i32, i32* @PATHSPEC_ONESTAR, align 4
  %208 = load %struct.pathspec_item*, %struct.pathspec_item** %6, align 8
  %209 = getelementptr inbounds %struct.pathspec_item, %struct.pathspec_item* %208, i32 0, i32 5
  %210 = load i32, i32* %209, align 4
  %211 = or i32 %210, %207
  store i32 %211, i32* %209, align 4
  br label %212

212:                                              ; preds = %206, %194, %182, %174
  br label %213

213:                                              ; preds = %212, %173
  %214 = load %struct.pathspec_item*, %struct.pathspec_item** %6, align 8
  %215 = getelementptr inbounds %struct.pathspec_item, %struct.pathspec_item* %214, i32 0, i32 4
  %216 = load i32, i32* %215, align 8
  %217 = load %struct.pathspec_item*, %struct.pathspec_item** %6, align 8
  %218 = getelementptr inbounds %struct.pathspec_item, %struct.pathspec_item* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 8
  %220 = icmp sgt i32 %216, %219
  br i1 %220, label %229, label %221

221:                                              ; preds = %213
  %222 = load %struct.pathspec_item*, %struct.pathspec_item** %6, align 8
  %223 = getelementptr inbounds %struct.pathspec_item, %struct.pathspec_item* %222, i32 0, i32 3
  %224 = load i32, i32* %223, align 4
  %225 = load %struct.pathspec_item*, %struct.pathspec_item** %6, align 8
  %226 = getelementptr inbounds %struct.pathspec_item, %struct.pathspec_item* %225, i32 0, i32 2
  %227 = load i32, i32* %226, align 8
  %228 = icmp sgt i32 %224, %227
  br i1 %228, label %229, label %231

229:                                              ; preds = %221, %213
  %230 = call i32 @BUG(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  br label %231

231:                                              ; preds = %229, %221
  ret void
}

declare dso_local i8* @parse_element_magic(i32*, i32*, %struct.pathspec_item*, i8*) #1

declare dso_local i32 @get_global_magic(i32) #1

declare dso_local i32 @BUG(i8*) #1

declare dso_local i32 @die(i32, i8*, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i8* @prefix_path_gently(i8*, i32, i32*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @get_literal_global(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @prefix_magic(%struct.strbuf*, i32, i32) #1

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #1

declare dso_local i8* @strbuf_detach(%struct.strbuf*, i32*) #1

declare dso_local i32 @simple_length(i8*) #1

declare dso_local i64 @no_wildcard(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
