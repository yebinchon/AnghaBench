; ModuleID = '/home/carl/AnghaBench/kphp-kdb/mutual-friends/extr_mf-prepare-file.c_main.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/mutual-friends/extr_mf-prepare-file.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@progname = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [12 x i8] c"hi:o:U:E:u:\00", align 1
@optarg = common dso_local global i8* null, align 8
@in_name = common dso_local global i32* null, align 8
@out_name = common dso_local global i32* null, align 8
@userN = common dso_local global i32 0, align 4
@engineN = common dso_local global i32 0, align 4
@username = common dso_local global i8* null, align 8
@optind = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"fatal: cannot change user to %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"(none)\00", align 1
@v = common dso_local global %struct.TYPE_5__* null, align 8
@fd = common dso_local global i64* null, align 8
@fcurr = common dso_local global i64* null, align 8
@A = common dso_local global i32 0, align 4
@B = common dso_local global i32 0, align 4
@l_len = common dso_local global i64* null, align 8
@SEEK_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %11 = call i32 (...) @set_debug_handlers()
  %12 = load i8**, i8*** %5, align 8
  %13 = getelementptr inbounds i8*, i8** %12, i64 0
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** @progname, align 8
  %15 = load i32, i32* %4, align 4
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = call i32 (...) @usage()
  store i32 2, i32* %3, align 4
  br label %230

19:                                               ; preds = %2
  br label %20

20:                                               ; preds = %43, %19
  %21 = load i32, i32* %4, align 4
  %22 = load i8**, i8*** %5, align 8
  %23 = call i32 @getopt(i32 %21, i8** %22, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i32 %23, i32* %6, align 4
  %24 = icmp ne i32 %23, -1
  br i1 %24, label %25, label %44

25:                                               ; preds = %20
  %26 = load i32, i32* %6, align 4
  switch i32 %26, label %43 [
    i32 104, label %27
    i32 105, label %29
    i32 111, label %32
    i32 85, label %35
    i32 69, label %38
    i32 117, label %41
  ]

27:                                               ; preds = %25
  %28 = call i32 (...) @usage()
  store i32 2, i32* %3, align 4
  br label %230

29:                                               ; preds = %25
  %30 = load i8*, i8** @optarg, align 8
  %31 = bitcast i8* %30 to i32*
  store i32* %31, i32** @in_name, align 8
  br label %43

32:                                               ; preds = %25
  %33 = load i8*, i8** @optarg, align 8
  %34 = bitcast i8* %33 to i32*
  store i32* %34, i32** @out_name, align 8
  br label %43

35:                                               ; preds = %25
  %36 = load i8*, i8** @optarg, align 8
  %37 = call i32 @atoi(i8* %36)
  store i32 %37, i32* @userN, align 4
  br label %43

38:                                               ; preds = %25
  %39 = load i8*, i8** @optarg, align 8
  %40 = call i32 @atoi(i8* %39)
  store i32 %40, i32* @engineN, align 4
  br label %43

41:                                               ; preds = %25
  %42 = load i8*, i8** @optarg, align 8
  store i8* %42, i8** @username, align 8
  br label %43

43:                                               ; preds = %25, %41, %38, %35, %32, %29
  br label %20

44:                                               ; preds = %20
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @optind, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = call i32 (...) @usage()
  store i32 2, i32* %3, align 4
  br label %230

50:                                               ; preds = %44
  %51 = load i8*, i8** @username, align 8
  %52 = call i64 @change_user(i8* %51)
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %54, label %65

54:                                               ; preds = %50
  %55 = load i32, i32* @stderr, align 4
  %56 = load i8*, i8** @username, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = load i8*, i8** @username, align 8
  br label %61

60:                                               ; preds = %54
  br label %61

61:                                               ; preds = %60, %58
  %62 = phi i8* [ %59, %58 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), %60 ]
  %63 = call i32 @fprintf(i32 %55, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* %62)
  %64 = call i32 @exit(i32 1) #3
  unreachable

65:                                               ; preds = %50
  %66 = load i32, i32* @userN, align 4
  %67 = icmp sge i32 %66, 0
  %68 = zext i1 %67 to i32
  %69 = call i32 @assert(i32 %68)
  %70 = load i32, i32* @engineN, align 4
  %71 = icmp sge i32 %70, 0
  %72 = zext i1 %71 to i32
  %73 = call i32 @assert(i32 %72)
  %74 = load i32, i32* @engineN, align 4
  %75 = add nsw i32 %74, 1
  %76 = call i32 @init_files(i32 %75)
  %77 = load i32, i32* @userN, align 4
  %78 = load i32, i32* @engineN, align 4
  %79 = sdiv i32 %77, %78
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* %7, align 4
  %81 = add nsw i32 %80, 2
  %82 = sext i32 %81 to i64
  %83 = mul i64 4, %82
  %84 = trunc i64 %83 to i32
  %85 = call %struct.TYPE_5__* @qmalloc(i32 %84)
  store %struct.TYPE_5__* %85, %struct.TYPE_5__** @v, align 8
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** @v, align 8
  %87 = icmp ne %struct.TYPE_5__* %86, null
  %88 = zext i1 %87 to i32
  %89 = call i32 @assert(i32 %88)
  store i32 0, i32* %6, align 4
  br label %90

90:                                               ; preds = %100, %65
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* %7, align 4
  %93 = icmp sle i32 %91, %92
  br i1 %93, label %94, label %103

94:                                               ; preds = %90
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** @v, align 8
  %96 = load i32, i32* %6, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i64 %97
  %99 = call i32 @vct_init(%struct.TYPE_5__* %98)
  br label %100

100:                                              ; preds = %94
  %101 = load i32, i32* %6, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %6, align 4
  br label %90

103:                                              ; preds = %90
  %104 = load i32*, i32** @in_name, align 8
  %105 = icmp ne i32* %104, null
  br i1 %105, label %106, label %109

106:                                              ; preds = %103
  %107 = load i32*, i32** @in_name, align 8
  %108 = call i32 @open_file(i32 0, i32* %107, i32 0)
  br label %112

109:                                              ; preds = %103
  %110 = load i64*, i64** @fd, align 8
  %111 = getelementptr inbounds i64, i64* %110, i64 0
  store i64 0, i64* %111, align 8
  br label %112

112:                                              ; preds = %109, %106
  %113 = load i64*, i64** @fcurr, align 8
  %114 = getelementptr inbounds i64, i64* %113, i64 0
  store i64 0, i64* %114, align 8
  %115 = load i32*, i32** @out_name, align 8
  %116 = call i32 @open_file(i32 1, i32* %115, i32 2)
  store i64 -1, i64* %8, align 8
  %117 = load i64*, i64** @fd, align 8
  %118 = getelementptr inbounds i64, i64* %117, i64 1
  %119 = load i64, i64* %118, align 8
  %120 = call i32 @write(i64 %119, i64* %8, i32 8)
  br label %121

121:                                              ; preds = %124, %112
  %122 = call i64 (...) @my_read()
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %134

124:                                              ; preds = %121
  %125 = load i32, i32* @A, align 4
  %126 = load i32, i32* @engineN, align 4
  %127 = sdiv i32 %125, %126
  store i32 %127, i32* %9, align 4
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** @v, align 8
  %129 = load i32, i32* %9, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i64 %130
  %132 = load i32, i32* @B, align 4
  %133 = call i32 @vct_add(%struct.TYPE_5__* %131, i32 %132)
  br label %121

134:                                              ; preds = %121
  %135 = load i32, i32* %7, align 4
  %136 = add nsw i32 %135, 2
  %137 = sext i32 %136 to i64
  %138 = mul i64 4, %137
  %139 = add i64 %138, 8
  %140 = trunc i64 %139 to i32
  store i32 %140, i32* %10, align 4
  %141 = load i32, i32* %10, align 4
  %142 = sext i32 %141 to i64
  store i64 %142, i64* %8, align 8
  %143 = load i32, i32* %10, align 4
  %144 = call i64* @qmalloc0(i32 %143)
  store i64* %144, i64** @l_len, align 8
  %145 = load i32, i32* %7, align 4
  %146 = add nsw i32 %145, 1
  %147 = sext i32 %146 to i64
  %148 = load i64*, i64** @l_len, align 8
  %149 = getelementptr inbounds i64, i64* %148, i64 0
  store i64 %147, i64* %149, align 8
  %150 = load i64*, i64** @fd, align 8
  %151 = getelementptr inbounds i64, i64* %150, i64 1
  %152 = load i64, i64* %151, align 8
  %153 = load i32, i32* %10, align 4
  %154 = load i32, i32* @SEEK_SET, align 4
  %155 = call i32 @lseek(i64 %152, i32 %153, i32 %154)
  %156 = load i32, i32* %10, align 4
  %157 = icmp eq i32 %155, %156
  %158 = zext i1 %157 to i32
  %159 = call i32 @assert(i32 %158)
  store i32 0, i32* %6, align 4
  br label %160

160:                                              ; preds = %204, %134
  %161 = load i32, i32* %6, align 4
  %162 = load i32, i32* %7, align 4
  %163 = icmp sle i32 %161, %162
  br i1 %163, label %164, label %207

164:                                              ; preds = %160
  %165 = load %struct.TYPE_5__*, %struct.TYPE_5__** @v, align 8
  %166 = load i32, i32* %6, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = sext i32 %170 to i64
  %172 = mul i64 %171, 4
  %173 = load i64*, i64** @l_len, align 8
  %174 = load i32, i32* %6, align 4
  %175 = add nsw i32 %174, 1
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i64, i64* %173, i64 %176
  store i64 %172, i64* %177, align 8
  %178 = load %struct.TYPE_5__*, %struct.TYPE_5__** @v, align 8
  %179 = load i32, i32* %6, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %178, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = sext i32 %183 to i64
  %185 = mul i64 %184, 4
  %186 = load i64, i64* %8, align 8
  %187 = add i64 %186, %185
  store i64 %187, i64* %8, align 8
  %188 = load %struct.TYPE_5__*, %struct.TYPE_5__** @v, align 8
  %189 = load i32, i32* %6, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %188, i64 %190
  %192 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.TYPE_5__*, %struct.TYPE_5__** @v, align 8
  %195 = load i32, i32* %6, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %194, i64 %196
  %198 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = sext i32 %199 to i64
  %201 = mul i64 %200, 4
  %202 = trunc i64 %201 to i32
  %203 = call i32 @my_write(i32 %193, i32 %202)
  br label %204

204:                                              ; preds = %164
  %205 = load i32, i32* %6, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %6, align 4
  br label %160

207:                                              ; preds = %160
  %208 = call i32 (...) @flush_w_buff()
  %209 = load i64*, i64** @fd, align 8
  %210 = getelementptr inbounds i64, i64* %209, i64 1
  %211 = load i64, i64* %210, align 8
  %212 = load i32, i32* @SEEK_SET, align 4
  %213 = call i32 @lseek(i64 %211, i32 0, i32 %212)
  %214 = icmp eq i32 %213, 0
  %215 = zext i1 %214 to i32
  %216 = call i32 @assert(i32 %215)
  %217 = load i64*, i64** @fd, align 8
  %218 = getelementptr inbounds i64, i64* %217, i64 1
  %219 = load i64, i64* %218, align 8
  %220 = call i32 @write(i64 %219, i64* %8, i32 8)
  %221 = load i64*, i64** @fd, align 8
  %222 = getelementptr inbounds i64, i64* %221, i64 1
  %223 = load i64, i64* %222, align 8
  %224 = load i64*, i64** @l_len, align 8
  %225 = load i32, i32* %10, align 4
  %226 = sext i32 %225 to i64
  %227 = sub i64 %226, 8
  %228 = trunc i64 %227 to i32
  %229 = call i32 @write(i64 %223, i64* %224, i32 %228)
  store i32 0, i32* %3, align 4
  br label %230

230:                                              ; preds = %207, %48, %27, %17
  %231 = load i32, i32* %3, align 4
  ret i32 %231
}

declare dso_local i32 @set_debug_handlers(...) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i64 @change_user(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @init_files(i32) #1

declare dso_local %struct.TYPE_5__* @qmalloc(i32) #1

declare dso_local i32 @vct_init(%struct.TYPE_5__*) #1

declare dso_local i32 @open_file(i32, i32*, i32) #1

declare dso_local i32 @write(i64, i64*, i32) #1

declare dso_local i64 @my_read(...) #1

declare dso_local i32 @vct_add(%struct.TYPE_5__*, i32) #1

declare dso_local i64* @qmalloc0(i32) #1

declare dso_local i32 @lseek(i64, i32, i32) #1

declare dso_local i32 @my_write(i32, i32) #1

declare dso_local i32 @flush_w_buff(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
