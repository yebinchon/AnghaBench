; ModuleID = '/home/carl/AnghaBench/kphp-kdb/msg-search/extr_index-user-names.c_main.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/msg-search/extr_index-user-names.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64, i32, i32*, i32 }

@progname = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"hv\00", align 1
@verbose = common dso_local global i32 0, align 4
@optind = common dso_local global i32 0, align 4
@MAX_PAIRS = common dso_local global i32 0, align 4
@P = common dso_local global %struct.TYPE_5__* null, align 8
@UU = common dso_local global i8* null, align 8
@O_RDONLY = common dso_local global i32 0, align 4
@fd = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"%s: cannot open() %s: %m\0A\00", align 1
@Pc = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"%s: error reading %s: %m\0A\00", align 1
@.str.3 = private unnamed_addr constant [58 x i8] c"%s: error reading %s: hash space exhausted (%ld entries)\0A\00", align 1
@MAX_USERS = common dso_local global i32 0, align 4
@U = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@Dc = common dso_local global i32 0, align 4
@USERNAME_HASH_INDEX_MAGIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i64 0, i64* %8, align 8
  %11 = load i8**, i8*** %5, align 8
  %12 = getelementptr inbounds i8*, i8** %11, i64 0
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** @progname, align 8
  br label %14

14:                                               ; preds = %24, %2
  %15 = load i32, i32* %4, align 4
  %16 = load i8**, i8*** %5, align 8
  %17 = call i32 @getopt(i32 %15, i8** %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32 %17, i32* %6, align 4
  %18 = icmp ne i32 %17, -1
  br i1 %18, label %19, label %25

19:                                               ; preds = %14
  %20 = load i32, i32* %6, align 4
  switch i32 %20, label %24 [
    i32 118, label %21
    i32 104, label %22
  ]

21:                                               ; preds = %19
  store i32 1, i32* @verbose, align 4
  br label %24

22:                                               ; preds = %19
  %23 = call i32 (...) @usage()
  store i32 2, i32* %3, align 4
  br label %221

24:                                               ; preds = %19, %21
  br label %14

25:                                               ; preds = %14
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @optind, align 4
  %28 = icmp sle i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = call i32 (...) @usage()
  store i32 2, i32* %3, align 4
  br label %221

31:                                               ; preds = %25
  %32 = load i32, i32* @MAX_PAIRS, align 4
  %33 = sext i32 %32 to i64
  %34 = mul i64 %33, 4
  %35 = trunc i64 %34 to i32
  %36 = call i8* @malloc(i32 %35)
  %37 = bitcast i8* %36 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %37, %struct.TYPE_5__** @P, align 8
  %38 = call i8* @malloc(i32 4)
  store i8* %38, i8** @UU, align 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** @P, align 8
  %40 = icmp ne %struct.TYPE_5__* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %31
  %42 = load i8*, i8** @UU, align 8
  %43 = icmp ne i8* %42, null
  br label %44

44:                                               ; preds = %41, %31
  %45 = phi i1 [ false, %31 ], [ %43, %41 ]
  %46 = zext i1 %45 to i32
  %47 = call i32 @assert(i32 %46)
  br label %48

48:                                               ; preds = %112, %62, %44
  %49 = load i32, i32* @optind, align 4
  %50 = load i32, i32* %4, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %124

52:                                               ; preds = %48
  %53 = load i8**, i8*** %5, align 8
  %54 = load i32, i32* @optind, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8*, i8** %53, i64 %55
  %57 = load i8*, i8** %56, align 8
  %58 = load i32, i32* @O_RDONLY, align 4
  %59 = call i64 @open(i8* %57, i32 %58)
  store i64 %59, i64* @fd, align 8
  %60 = load i64, i64* @fd, align 8
  %61 = icmp slt i64 %60, 0
  br i1 %61, label %62, label %73

62:                                               ; preds = %52
  %63 = load i32, i32* @stderr, align 4
  %64 = load i8*, i8** @progname, align 8
  %65 = load i8**, i8*** %5, align 8
  %66 = load i32, i32* @optind, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8*, i8** %65, i64 %67
  %69 = load i8*, i8** %68, align 8
  %70 = call i32 (i32, i8*, i8*, i8*, ...) @fprintf(i32 %63, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* %64, i8* %69)
  %71 = load i32, i32* @optind, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* @optind, align 4
  br label %48

73:                                               ; preds = %52
  %74 = load i32, i32* @MAX_PAIRS, align 4
  %75 = load i32, i32* @Pc, align 4
  %76 = sub nsw i32 %74, %75
  %77 = sext i32 %76 to i64
  %78 = mul i64 %77, 4
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %7, align 4
  %80 = load i64, i64* @fd, align 8
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** @P, align 8
  %82 = load i32, i32* @Pc, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i64 %83
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @read(i64 %80, %struct.TYPE_5__* %84, i32 %85)
  store i32 %86, i32* %6, align 4
  %87 = load i32, i32* %6, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %98

89:                                               ; preds = %73
  %90 = load i32, i32* @stderr, align 4
  %91 = load i8*, i8** @progname, align 8
  %92 = load i8**, i8*** %5, align 8
  %93 = load i32, i32* @optind, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8*, i8** %92, i64 %94
  %96 = load i8*, i8** %95, align 8
  %97 = call i32 (i32, i8*, i8*, i8*, ...) @fprintf(i32 %90, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* %91, i8* %96)
  store i32 1, i32* %3, align 4
  br label %221

98:                                               ; preds = %73
  %99 = load i32, i32* %6, align 4
  %100 = load i32, i32* %7, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %112

102:                                              ; preds = %98
  %103 = load i32, i32* @stderr, align 4
  %104 = load i8*, i8** @progname, align 8
  %105 = load i8**, i8*** %5, align 8
  %106 = load i32, i32* @optind, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8*, i8** %105, i64 %107
  %109 = load i8*, i8** %108, align 8
  %110 = load i32, i32* @MAX_PAIRS, align 4
  %111 = call i32 (i32, i8*, i8*, i8*, ...) @fprintf(i32 %103, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0), i8* %104, i8* %109, i32 %110)
  store i32 1, i32* %3, align 4
  br label %221

112:                                              ; preds = %98
  %113 = load i32, i32* %6, align 4
  %114 = sext i32 %113 to i64
  %115 = udiv i64 %114, 4
  %116 = load i32, i32* @Pc, align 4
  %117 = sext i32 %116 to i64
  %118 = add i64 %117, %115
  %119 = trunc i64 %118 to i32
  store i32 %119, i32* @Pc, align 4
  %120 = load i64, i64* @fd, align 8
  %121 = call i32 @close(i64 %120)
  %122 = load i32, i32* @optind, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* @optind, align 4
  br label %48

124:                                              ; preds = %48
  %125 = load i32, i32* @Pc, align 4
  %126 = sub nsw i32 %125, 1
  %127 = call i32 @my_psort(i32 0, i32 %126)
  store i32 0, i32* %6, align 4
  br label %128

128:                                              ; preds = %176, %124
  %129 = load i32, i32* %6, align 4
  %130 = load i32, i32* @Pc, align 4
  %131 = icmp slt i32 %129, %130
  br i1 %131, label %132, label %179

132:                                              ; preds = %128
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** @P, align 8
  %134 = load i32, i32* %6, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  store i32 %138, i32* %9, align 4
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** @P, align 8
  %140 = load i32, i32* %6, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  store i64 %144, i64* %10, align 8
  %145 = load i32, i32* %9, align 4
  %146 = load i32, i32* @MAX_USERS, align 4
  %147 = sub nsw i32 %146, 3
  %148 = icmp slt i32 %145, %147
  %149 = zext i1 %148 to i32
  %150 = call i32 @assert(i32 %149)
  br label %151

151:                                              ; preds = %155, %132
  %152 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @U, i32 0, i32 2), align 8
  %153 = load i32, i32* %9, align 4
  %154 = icmp sle i32 %152, %153
  br i1 %154, label %155, label %162

155:                                              ; preds = %151
  %156 = load i32, i32* @Dc, align 4
  %157 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @U, i32 0, i32 3), align 8
  %158 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @U, i32 0, i32 2), align 8
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @U, i32 0, i32 2), align 8
  %160 = sext i32 %158 to i64
  %161 = getelementptr inbounds i32, i32* %157, i64 %160
  store i32 %156, i32* %161, align 4
  store i64 0, i64* %8, align 8
  br label %151

162:                                              ; preds = %151
  %163 = load i64, i64* %10, align 8
  %164 = load i64, i64* %8, align 8
  %165 = icmp ne i64 %163, %164
  br i1 %165, label %166, label %175

166:                                              ; preds = %162
  %167 = load i64, i64* %10, align 8
  %168 = load %struct.TYPE_5__*, %struct.TYPE_5__** @P, align 8
  %169 = bitcast %struct.TYPE_5__* %168 to i64*
  %170 = load i32, i32* @Dc, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* @Dc, align 4
  %172 = sext i32 %170 to i64
  %173 = getelementptr inbounds i64, i64* %169, i64 %172
  store i64 %167, i64* %173, align 8
  %174 = load i64, i64* %10, align 8
  store i64 %174, i64* %8, align 8
  br label %175

175:                                              ; preds = %166, %162
  br label %176

176:                                              ; preds = %175
  %177 = load i32, i32* %6, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %6, align 4
  br label %128

179:                                              ; preds = %128
  %180 = load i32, i32* @Dc, align 4
  %181 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @U, i32 0, i32 3), align 8
  %182 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @U, i32 0, i32 2), align 8
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @U, i32 0, i32 2), align 8
  %184 = sext i32 %182 to i64
  %185 = getelementptr inbounds i32, i32* %181, i64 %184
  store i32 %180, i32* %185, align 4
  %186 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @U, i32 0, i32 2), align 8
  %187 = and i32 %186, 1
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %196

189:                                              ; preds = %179
  %190 = load i32, i32* @Dc, align 4
  %191 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @U, i32 0, i32 3), align 8
  %192 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @U, i32 0, i32 2), align 8
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @U, i32 0, i32 2), align 8
  %194 = sext i32 %192 to i64
  %195 = getelementptr inbounds i32, i32* %191, i64 %194
  store i32 %190, i32* %195, align 4
  br label %196

196:                                              ; preds = %189, %179
  %197 = load i32, i32* @USERNAME_HASH_INDEX_MAGIC, align 4
  store i32 %197, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @U, i32 0, i32 4), align 8
  %198 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @U, i32 0, i32 2), align 8
  %199 = mul nsw i32 4, %198
  %200 = add nsw i32 8, %199
  store i32 %200, i32* %7, align 4
  %201 = load i32, i32* %7, align 4
  %202 = call i32 @write(i32 1, %struct.TYPE_5__* @U, i32 %201)
  %203 = load i32, i32* %7, align 4
  %204 = icmp eq i32 %202, %203
  %205 = zext i1 %204 to i32
  %206 = call i32 @assert(i32 %205)
  %207 = load i32, i32* @Dc, align 4
  %208 = mul nsw i32 %207, 8
  store i32 %208, i32* %7, align 4
  %209 = load %struct.TYPE_5__*, %struct.TYPE_5__** @P, align 8
  %210 = load i32, i32* %7, align 4
  %211 = call i32 @write(i32 1, %struct.TYPE_5__* %209, i32 %210)
  %212 = load i32, i32* %7, align 4
  %213 = icmp eq i32 %211, %212
  %214 = zext i1 %213 to i32
  %215 = call i32 @assert(i32 %214)
  %216 = load i32, i32* @verbose, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %220

218:                                              ; preds = %196
  %219 = call i32 (...) @output_stats()
  br label %220

220:                                              ; preds = %218, %196
  store i32 0, i32* %3, align 4
  br label %221

221:                                              ; preds = %220, %102, %89, %29, %22
  %222 = load i32, i32* %3, align 4
  ret i32 %222
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @open(i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*, ...) #1

declare dso_local i32 @read(i64, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @close(i64) #1

declare dso_local i32 @my_psort(i32, i32) #1

declare dso_local i32 @write(i32, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @output_stats(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
