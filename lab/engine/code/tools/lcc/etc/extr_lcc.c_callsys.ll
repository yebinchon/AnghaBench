; ModuleID = '/home/carl/AnghaBench/lab/engine/code/tools/lcc/etc/extr_lcc.c_callsys.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/tools/lcc/etc/extr_lcc.c_callsys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@callsys.argv = internal global i8** null, align 8
@callsys.argc = internal global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%.*s\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"\22%s\22\00", align 1
@verbose = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@progname = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**)* @callsys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @callsys(i8** %0) #0 {
  %2 = alloca i8**, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i8** %0, i8*** %2, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %17, %1
  %10 = load i8**, i8*** %2, align 8
  %11 = load i32, i32* %3, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i8*, i8** %10, i64 %12
  %14 = load i8*, i8** %13, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %9
  br label %17

17:                                               ; preds = %16
  %18 = load i32, i32* %3, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %3, align 4
  br label %9

20:                                               ; preds = %9
  %21 = load i32, i32* %3, align 4
  %22 = add nsw i32 %21, 1
  %23 = load i32, i32* @callsys.argc, align 4
  %24 = icmp sgt i32 %22, %23
  br i1 %24, label %25, label %46

25:                                               ; preds = %20
  %26 = load i32, i32* %3, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* @callsys.argc, align 4
  %28 = load i8**, i8*** @callsys.argv, align 8
  %29 = icmp eq i8** %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %25
  %31 = load i32, i32* @callsys.argc, align 4
  %32 = sext i32 %31 to i64
  %33 = mul i64 %32, 8
  %34 = trunc i64 %33 to i32
  %35 = call i8** @malloc(i32 %34)
  store i8** %35, i8*** @callsys.argv, align 8
  br label %43

36:                                               ; preds = %25
  %37 = load i8**, i8*** @callsys.argv, align 8
  %38 = load i32, i32* @callsys.argc, align 4
  %39 = sext i32 %38 to i64
  %40 = mul i64 %39, 8
  %41 = trunc i64 %40 to i32
  %42 = call i8** @realloc(i8** %37, i32 %41)
  store i8** %42, i8*** @callsys.argv, align 8
  br label %43

43:                                               ; preds = %36, %30
  %44 = load i8**, i8*** @callsys.argv, align 8
  %45 = call i32 @assert(i8** %44)
  br label %46

46:                                               ; preds = %43, %20
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %202, %46
  %48 = load i32, i32* %4, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %47
  %51 = load i8**, i8*** %2, align 8
  %52 = load i32, i32* %3, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8*, i8** %51, i64 %53
  %55 = load i8*, i8** %54, align 8
  %56 = icmp ne i8* %55, null
  br label %57

57:                                               ; preds = %50, %47
  %58 = phi i1 [ false, %47 ], [ %56, %50 ]
  br i1 %58, label %59, label %203

59:                                               ; preds = %57
  store i32 0, i32* %6, align 4
  store i8* null, i8** %7, align 8
  br label %60

60:                                               ; preds = %88, %59
  %61 = load i8**, i8*** %2, align 8
  %62 = load i32, i32* %3, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8*, i8** %61, i64 %63
  %65 = load i8*, i8** %64, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %75

67:                                               ; preds = %60
  %68 = load i8**, i8*** %2, align 8
  %69 = load i32, i32* %3, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8*, i8** %68, i64 %70
  %72 = load i8*, i8** %71, align 8
  %73 = call i8* @strchr(i8* %72, i8 signext 10)
  store i8* %73, i8** %7, align 8
  %74 = icmp eq i8* %73, null
  br label %75

75:                                               ; preds = %67, %60
  %76 = phi i1 [ false, %60 ], [ %74, %67 ]
  br i1 %76, label %77, label %91

77:                                               ; preds = %75
  %78 = load i8**, i8*** %2, align 8
  %79 = load i32, i32* %3, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8*, i8** %78, i64 %80
  %82 = load i8*, i8** %81, align 8
  %83 = load i8**, i8*** @callsys.argv, align 8
  %84 = load i32, i32* %6, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %6, align 4
  %86 = sext i32 %84 to i64
  %87 = getelementptr inbounds i8*, i8** %83, i64 %86
  store i8* %82, i8** %87, align 8
  br label %88

88:                                               ; preds = %77
  %89 = load i32, i32* %3, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %3, align 4
  br label %60

91:                                               ; preds = %75
  %92 = load i8*, i8** %7, align 8
  %93 = icmp ne i8* %92, null
  br i1 %93, label %94, label %140

94:                                               ; preds = %91
  %95 = load i8*, i8** %7, align 8
  %96 = load i8**, i8*** %2, align 8
  %97 = load i32, i32* %3, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8*, i8** %96, i64 %98
  %100 = load i8*, i8** %99, align 8
  %101 = icmp ugt i8* %95, %100
  br i1 %101, label %102, label %123

102:                                              ; preds = %94
  %103 = load i8*, i8** %7, align 8
  %104 = load i8**, i8*** %2, align 8
  %105 = load i32, i32* %3, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8*, i8** %104, i64 %106
  %108 = load i8*, i8** %107, align 8
  %109 = ptrtoint i8* %103 to i64
  %110 = ptrtoint i8* %108 to i64
  %111 = sub i64 %109, %110
  %112 = load i8**, i8*** %2, align 8
  %113 = load i32, i32* %3, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8*, i8** %112, i64 %114
  %116 = load i8*, i8** %115, align 8
  %117 = call i8* (i8*, ...) @stringf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 %111, i8* %116)
  %118 = load i8**, i8*** @callsys.argv, align 8
  %119 = load i32, i32* %6, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %6, align 4
  %121 = sext i32 %119 to i64
  %122 = getelementptr inbounds i8*, i8** %118, i64 %121
  store i8* %117, i8** %122, align 8
  br label %123

123:                                              ; preds = %102, %94
  %124 = load i8*, i8** %7, align 8
  %125 = getelementptr inbounds i8, i8* %124, i64 1
  %126 = load i8, i8* %125, align 1
  %127 = sext i8 %126 to i32
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %136

129:                                              ; preds = %123
  %130 = load i8*, i8** %7, align 8
  %131 = getelementptr inbounds i8, i8* %130, i64 1
  %132 = load i8**, i8*** %2, align 8
  %133 = load i32, i32* %3, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i8*, i8** %132, i64 %134
  store i8* %131, i8** %135, align 8
  br label %139

136:                                              ; preds = %123
  %137 = load i32, i32* %3, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %3, align 4
  br label %139

139:                                              ; preds = %136, %129
  br label %140

140:                                              ; preds = %139, %91
  %141 = load i8**, i8*** @callsys.argv, align 8
  %142 = load i32, i32* %6, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i8*, i8** %141, i64 %143
  store i8* null, i8** %144, align 8
  %145 = load i8**, i8*** @callsys.argv, align 8
  %146 = getelementptr inbounds i8*, i8** %145, i64 0
  %147 = load i8*, i8** %146, align 8
  %148 = call i8* @strsave(i8* %147)
  store i8* %148, i8** %5, align 8
  %149 = load i8**, i8*** @callsys.argv, align 8
  %150 = getelementptr inbounds i8*, i8** %149, i64 0
  %151 = load i8*, i8** %150, align 8
  %152 = call i8* (i8*, ...) @stringf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %151)
  %153 = load i8**, i8*** @callsys.argv, align 8
  %154 = getelementptr inbounds i8*, i8** %153, i64 0
  store i8* %152, i8** %154, align 8
  %155 = load i32, i32* @verbose, align 4
  %156 = icmp sgt i32 %155, 0
  br i1 %156, label %157, label %184

157:                                              ; preds = %140
  %158 = load i32, i32* @stderr, align 4
  %159 = load i8**, i8*** @callsys.argv, align 8
  %160 = getelementptr inbounds i8*, i8** %159, i64 0
  %161 = load i8*, i8** %160, align 8
  %162 = call i32 (i32, i8*, ...) @fprintf(i32 %158, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %161)
  store i32 1, i32* %8, align 4
  br label %163

163:                                              ; preds = %178, %157
  %164 = load i8**, i8*** @callsys.argv, align 8
  %165 = load i32, i32* %8, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i8*, i8** %164, i64 %166
  %168 = load i8*, i8** %167, align 8
  %169 = icmp ne i8* %168, null
  br i1 %169, label %170, label %181

170:                                              ; preds = %163
  %171 = load i32, i32* @stderr, align 4
  %172 = load i8**, i8*** @callsys.argv, align 8
  %173 = load i32, i32* %8, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i8*, i8** %172, i64 %174
  %176 = load i8*, i8** %175, align 8
  %177 = call i32 (i32, i8*, ...) @fprintf(i32 %171, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %176)
  br label %178

178:                                              ; preds = %170
  %179 = load i32, i32* %8, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %8, align 4
  br label %163

181:                                              ; preds = %163
  %182 = load i32, i32* @stderr, align 4
  %183 = call i32 (i32, i8*, ...) @fprintf(i32 %182, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %184

184:                                              ; preds = %181, %140
  %185 = load i32, i32* @verbose, align 4
  %186 = icmp slt i32 %185, 2
  br i1 %186, label %187, label %191

187:                                              ; preds = %184
  %188 = load i8*, i8** %5, align 8
  %189 = load i8**, i8*** @callsys.argv, align 8
  %190 = call i32 @spawn(i8* %188, i8** %189)
  store i32 %190, i32* %4, align 4
  br label %191

191:                                              ; preds = %187, %184
  %192 = load i32, i32* %4, align 4
  %193 = icmp eq i32 %192, -1
  br i1 %193, label %194, label %202

194:                                              ; preds = %191
  %195 = load i32, i32* @stderr, align 4
  %196 = load i8*, i8** @progname, align 8
  %197 = call i32 (i32, i8*, ...) @fprintf(i32 %195, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* %196)
  %198 = load i8**, i8*** @callsys.argv, align 8
  %199 = getelementptr inbounds i8*, i8** %198, i64 0
  %200 = load i8*, i8** %199, align 8
  %201 = call i32 @perror(i8* %200)
  br label %202

202:                                              ; preds = %194, %191
  br label %47

203:                                              ; preds = %57
  %204 = load i32, i32* %4, align 4
  ret i32 %204
}

declare dso_local i8** @malloc(i32) #1

declare dso_local i8** @realloc(i8**, i32) #1

declare dso_local i32 @assert(i8**) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @stringf(i8*, ...) #1

declare dso_local i8* @strsave(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @spawn(i8*, i8**) #1

declare dso_local i32 @perror(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
