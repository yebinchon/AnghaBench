; ModuleID = '/home/carl/AnghaBench/lab/engine/code/tools/lcc/src/extr_main.c_main.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/tools/lcc/src/extr_main.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i8*, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 (...)*, i32 (%struct.TYPE_8__*, i32*, i32*, i32*, i32*)*, i32 (i32, i32, i8**)*, i32 (i32, i8**)* }
%struct.TYPE_8__ = type { i32, i64, i32 }
%struct.TYPE_9__ = type { i64 }

@.str = private unnamed_addr constant [9 x i8] c"-target=\00", align 1
@bindings = common dso_local global %struct.TYPE_10__* null, align 8
@IR = common dso_local global %struct.TYPE_11__* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"%s: unknown target\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c" `%s'\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"; must specify one of\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"\09-target=%s\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@t = common dso_local global i32 0, align 4
@glevel = common dso_local global i32 0, align 4
@firstfile = common dso_local global i32 0, align 4
@events = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@xref = common dso_local global i64 0, align 8
@types = common dso_local global i32 0, align 4
@GLOBAL = common dso_local global i32 0, align 4
@typestab = common dso_local global i32 0, align 4
@identifiers = common dso_local global i32 0, align 4
@lineno = common dso_local global i32 0, align 4
@loci = common dso_local global i32 0, align 4
@PERM = common dso_local global i32 0, align 4
@symbols = common dso_local global i32 0, align 4
@errcnt = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_8__, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = sub nsw i32 %11, 1
  store i32 %12, i32* %6, align 4
  br label %13

13:                                               ; preds = %26, %2
  %14 = load i32, i32* %6, align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %29

16:                                               ; preds = %13
  %17 = load i8**, i8*** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8*, i8** %17, i64 %19
  %21 = load i8*, i8** %20, align 8
  %22 = call i64 @strncmp(i8* %21, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 8)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  br label %29

25:                                               ; preds = %16
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* %6, align 4
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* %6, align 4
  br label %13

29:                                               ; preds = %24, %13
  %30 = load i32, i32* %6, align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %94

32:                                               ; preds = %29
  %33 = load i8**, i8*** %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8*, i8** %33, i64 %35
  %37 = load i8*, i8** %36, align 8
  %38 = call i8* @strchr(i8* %37, i8 signext 92)
  store i8* %38, i8** %8, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %32
  %42 = load i8*, i8** %8, align 8
  store i8 47, i8* %42, align 1
  br label %43

43:                                               ; preds = %41, %32
  store i32 0, i32* %7, align 4
  br label %44

44:                                               ; preds = %85, %43
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** @bindings, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %60

52:                                               ; preds = %44
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** @bindings, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %57, align 8
  %59 = icmp ne %struct.TYPE_11__* %58, null
  br label %60

60:                                               ; preds = %52, %44
  %61 = phi i1 [ false, %44 ], [ %59, %52 ]
  br i1 %61, label %62, label %88

62:                                               ; preds = %60
  %63 = load i8**, i8*** %5, align 8
  %64 = load i32, i32* %6, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8*, i8** %63, i64 %65
  %67 = load i8*, i8** %66, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 8
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** @bindings, align 8
  %70 = load i32, i32* %7, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = call i64 @strcmp(i8* %68, i8* %74)
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %62
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** @bindings, align 8
  %79 = load i32, i32* %7, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %82, align 8
  store %struct.TYPE_11__* %83, %struct.TYPE_11__** @IR, align 8
  br label %88

84:                                               ; preds = %62
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %7, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %7, align 4
  br label %44

88:                                               ; preds = %77, %60
  %89 = load i8*, i8** %8, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %91, label %93

91:                                               ; preds = %88
  %92 = load i8*, i8** %8, align 8
  store i8 92, i8* %92, align 1
  br label %93

93:                                               ; preds = %91, %88
  br label %94

94:                                               ; preds = %93, %29
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** @IR, align 8
  %96 = icmp ne %struct.TYPE_11__* %95, null
  br i1 %96, label %140, label %97

97:                                               ; preds = %94
  %98 = load i32, i32* @stderr, align 4
  %99 = load i8**, i8*** %5, align 8
  %100 = getelementptr inbounds i8*, i8** %99, i64 0
  %101 = load i8*, i8** %100, align 8
  %102 = call i32 (i32, i8*, ...) @fprint(i32 %98, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %101)
  %103 = load i32, i32* %6, align 4
  %104 = icmp sgt i32 %103, 0
  br i1 %104, label %105, label %114

105:                                              ; preds = %97
  %106 = load i32, i32* @stderr, align 4
  %107 = load i8**, i8*** %5, align 8
  %108 = load i32, i32* %6, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8*, i8** %107, i64 %109
  %111 = load i8*, i8** %110, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 8
  %113 = call i32 (i32, i8*, ...) @fprint(i32 %106, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %112)
  br label %114

114:                                              ; preds = %105, %97
  %115 = load i32, i32* @stderr, align 4
  %116 = call i32 (i32, i8*, ...) @fprint(i32 %115, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %117

117:                                              ; preds = %134, %114
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** @bindings, align 8
  %119 = load i32, i32* %6, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 0
  %123 = load i8*, i8** %122, align 8
  %124 = icmp ne i8* %123, null
  br i1 %124, label %125, label %137

125:                                              ; preds = %117
  %126 = load i32, i32* @stderr, align 4
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** @bindings, align 8
  %128 = load i32, i32* %6, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 0
  %132 = load i8*, i8** %131, align 8
  %133 = call i32 (i32, i8*, ...) @fprint(i32 %126, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8* %132)
  br label %134

134:                                              ; preds = %125
  %135 = load i32, i32* %6, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %6, align 4
  br label %117

137:                                              ; preds = %117
  %138 = load i32, i32* @EXIT_FAILURE, align 4
  %139 = call i32 @exit(i32 %138) #3
  unreachable

140:                                              ; preds = %94
  %141 = load i32, i32* %4, align 4
  %142 = load i8**, i8*** %5, align 8
  %143 = call i32 @init(i32 %141, i8** %142)
  %144 = call i32 (...) @gettok()
  store i32 %144, i32* @t, align 4
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** @IR, align 8
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 3
  %147 = load i32 (i32, i8**)*, i32 (i32, i8**)** %146, align 8
  %148 = load i32, i32* %4, align 4
  %149 = load i8**, i8*** %5, align 8
  %150 = call i32 %147(i32 %148, i8** %149)
  %151 = load i32, i32* @glevel, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %166

153:                                              ; preds = %140
  %154 = load %struct.TYPE_11__*, %struct.TYPE_11__** @IR, align 8
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 2
  %156 = load i32 (i32, i32, i8**)*, i32 (i32, i32, i8**)** %155, align 8
  %157 = icmp ne i32 (i32, i32, i8**)* %156, null
  br i1 %157, label %158, label %166

158:                                              ; preds = %153
  %159 = load %struct.TYPE_11__*, %struct.TYPE_11__** @IR, align 8
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %159, i32 0, i32 2
  %161 = load i32 (i32, i32, i8**)*, i32 (i32, i32, i8**)** %160, align 8
  %162 = load i32, i32* @firstfile, align 4
  %163 = load i32, i32* %4, align 4
  %164 = load i8**, i8*** %5, align 8
  %165 = call i32 %161(i32 %162, i32 %163, i8** %164)
  br label %166

166:                                              ; preds = %158, %153, %140
  %167 = call i32 (...) @program()
  %168 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @events, i32 0, i32 0), align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %173

170:                                              ; preds = %166
  %171 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @events, i32 0, i32 0), align 8
  %172 = call i32 @apply(i64 %171, i32* null, i32* null)
  br label %173

173:                                              ; preds = %170, %166
  %174 = call i32 @memset(%struct.TYPE_9__* @events, i32 0, i32 8)
  %175 = load i32, i32* @glevel, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %180, label %177

177:                                              ; preds = %173
  %178 = load i64, i64* @xref, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %226

180:                                              ; preds = %177, %173
  store i32* null, i32** %9, align 8
  %181 = load i32, i32* @types, align 4
  %182 = load i32, i32* @GLOBAL, align 4
  %183 = load i32, i32* @typestab, align 4
  %184 = call i32 @foreach(i32 %181, i32 %182, i32 %183, i32** %9)
  %185 = load i32, i32* @identifiers, align 4
  %186 = load i32, i32* @GLOBAL, align 4
  %187 = load i32, i32* @typestab, align 4
  %188 = call i32 @foreach(i32 %185, i32 %186, i32 %187, i32** %9)
  %189 = load i32, i32* @firstfile, align 4
  %190 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 2
  store i32 %189, i32* %190, align 8
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  store i64 0, i64* %191, align 8
  %192 = load i32, i32* @lineno, align 4
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  store i32 %192, i32* %193, align 8
  %194 = load i32, i32* @glevel, align 4
  %195 = icmp sgt i32 %194, 2
  br i1 %195, label %199, label %196

196:                                              ; preds = %180
  %197 = load i64, i64* @xref, align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %214

199:                                              ; preds = %196, %180
  %200 = load %struct.TYPE_11__*, %struct.TYPE_11__** @IR, align 8
  %201 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %200, i32 0, i32 1
  %202 = load i32 (%struct.TYPE_8__*, i32*, i32*, i32*, i32*)*, i32 (%struct.TYPE_8__*, i32*, i32*, i32*, i32*)** %201, align 8
  %203 = icmp ne i32 (%struct.TYPE_8__*, i32*, i32*, i32*, i32*)* %202, null
  br i1 %203, label %204, label %214

204:                                              ; preds = %199
  %205 = load %struct.TYPE_11__*, %struct.TYPE_11__** @IR, align 8
  %206 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %205, i32 0, i32 1
  %207 = load i32 (%struct.TYPE_8__*, i32*, i32*, i32*, i32*)*, i32 (%struct.TYPE_8__*, i32*, i32*, i32*, i32*)** %206, align 8
  %208 = load i32*, i32** %9, align 8
  %209 = load i32, i32* @PERM, align 4
  %210 = call i32* @ltov(i32* @loci, i32 %209)
  %211 = load i32, i32* @PERM, align 4
  %212 = call i32* @ltov(i32* @symbols, i32 %211)
  %213 = call i32 %207(%struct.TYPE_8__* %10, i32* %208, i32* %210, i32* %212, i32* null)
  br label %225

214:                                              ; preds = %199, %196
  %215 = load %struct.TYPE_11__*, %struct.TYPE_11__** @IR, align 8
  %216 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %215, i32 0, i32 1
  %217 = load i32 (%struct.TYPE_8__*, i32*, i32*, i32*, i32*)*, i32 (%struct.TYPE_8__*, i32*, i32*, i32*, i32*)** %216, align 8
  %218 = icmp ne i32 (%struct.TYPE_8__*, i32*, i32*, i32*, i32*)* %217, null
  br i1 %218, label %219, label %224

219:                                              ; preds = %214
  %220 = load %struct.TYPE_11__*, %struct.TYPE_11__** @IR, align 8
  %221 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %220, i32 0, i32 1
  %222 = load i32 (%struct.TYPE_8__*, i32*, i32*, i32*, i32*)*, i32 (%struct.TYPE_8__*, i32*, i32*, i32*, i32*)** %221, align 8
  %223 = call i32 %222(%struct.TYPE_8__* %10, i32* null, i32* null, i32* null, i32* null)
  br label %224

224:                                              ; preds = %219, %214
  br label %225

225:                                              ; preds = %224, %204
  br label %226

226:                                              ; preds = %225, %177
  %227 = call i32 (...) @finalize()
  %228 = load %struct.TYPE_11__*, %struct.TYPE_11__** @IR, align 8
  %229 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %228, i32 0, i32 0
  %230 = load i32 (...)*, i32 (...)** %229, align 8
  %231 = call i32 (...) %230()
  %232 = load i32, i32* @PERM, align 4
  %233 = call i32 @deallocate(i32 %232)
  %234 = load i64, i64* @errcnt, align 8
  %235 = icmp sgt i64 %234, 0
  %236 = zext i1 %235 to i32
  ret i32 %236
}

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @fprint(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @init(i32, i8**) #1

declare dso_local i32 @gettok(...) #1

declare dso_local i32 @program(...) #1

declare dso_local i32 @apply(i64, i32*, i32*) #1

declare dso_local i32 @memset(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @foreach(i32, i32, i32, i32**) #1

declare dso_local i32* @ltov(i32*, i32) #1

declare dso_local i32 @finalize(...) #1

declare dso_local i32 @deallocate(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
