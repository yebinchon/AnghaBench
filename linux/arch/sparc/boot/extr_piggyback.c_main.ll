; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/boot/extr_piggyback.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/boot/extr_piggyback.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@main.aout_magic = internal global [4 x i8] c"\01\03\01\07", align 1
@.str = private unnamed_addr constant [3 x i8] c"64\00", align 1
@is64bit = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Could not determine start and end from %s\0A\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Not a.out. Don't blame me.\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"lseek\00", align 1
@AOUT_TEXT_OFFSET = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"close\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [1024 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.stat, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 5
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = call i32 (...) @usage()
  br label %18

18:                                               ; preds = %16, %2
  %19 = load i8**, i8*** %5, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 1
  %21 = load i8*, i8** %20, align 8
  %22 = call i64 @strcmp(i8* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store i32 1, i32* @is64bit, align 4
  br label %25

25:                                               ; preds = %24, %18
  %26 = load i8**, i8*** %5, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 4
  %28 = load i8*, i8** %27, align 8
  %29 = call i64 @stat(i8* %28, %struct.stat* %11)
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %25
  %32 = load i8**, i8*** %5, align 8
  %33 = getelementptr inbounds i8*, i8** %32, i64 4
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @die(i8* %34)
  br label %36

36:                                               ; preds = %31, %25
  %37 = load i8**, i8*** %5, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 3
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @get_start_end(i8* %39, i32* %8, i32* %9)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %49, label %42

42:                                               ; preds = %36
  %43 = load i32, i32* @stderr, align 4
  %44 = load i8**, i8*** %5, align 8
  %45 = getelementptr inbounds i8*, i8** %44, i64 3
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 (i32, i8*, ...) @fprintf(i32 %43, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i8* %46)
  %48 = call i32 @exit(i32 1) #3
  unreachable

49:                                               ; preds = %36
  %50 = load i8**, i8*** %5, align 8
  %51 = getelementptr inbounds i8*, i8** %50, i64 2
  %52 = load i8*, i8** %51, align 8
  %53 = load i32, i32* @O_RDWR, align 4
  %54 = call i32 @open(i8* %52, i32 %53)
  store i32 %54, i32* %12, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %49
  %57 = load i8**, i8*** %5, align 8
  %58 = getelementptr inbounds i8*, i8** %57, i64 2
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @die(i8* %59)
  br label %61

61:                                               ; preds = %56, %49
  %62 = load i32, i32* %12, align 4
  %63 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %64 = call i32 @read(i32 %62, i8* %63, i32 512)
  %65 = icmp ne i32 %64, 512
  br i1 %65, label %66, label %71

66:                                               ; preds = %61
  %67 = load i8**, i8*** %5, align 8
  %68 = getelementptr inbounds i8*, i8** %67, i64 2
  %69 = load i8*, i8** %68, align 8
  %70 = call i32 @die(i8* %69)
  br label %71

71:                                               ; preds = %66, %61
  %72 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %73 = call i64 @memcmp(i8* %72, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @main.aout_magic, i64 0, i64 0), i32 4)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %71
  %76 = load i32, i32* @stderr, align 4
  %77 = call i32 (i32, i8*, ...) @fprintf(i32 %76, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %78 = call i32 @exit(i32 1) #3
  unreachable

79:                                               ; preds = %71
  %80 = load i32, i32* %12, align 4
  %81 = load i8**, i8*** %5, align 8
  %82 = getelementptr inbounds i8*, i8** %81, i64 2
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 @get_hdrs_offset(i32 %80, i8* %83)
  store i32 %84, i32* %10, align 4
  %85 = load i32, i32* %10, align 4
  %86 = add nsw i32 %85, 10
  store i32 %86, i32* %10, align 4
  %87 = load i32, i32* %12, align 4
  %88 = load i32, i32* %10, align 4
  %89 = call i64 @lseek(i32 %87, i32 %88, i32 0)
  %90 = icmp slt i64 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %79
  %92 = call i32 @die(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  br label %93

93:                                               ; preds = %91, %79
  %94 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %95 = call i32 @st4(i8* %94, i32 0)
  %96 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %97 = getelementptr inbounds i8, i8* %96, i64 4
  %98 = call i32 @st4(i8* %97, i32 16777216)
  %99 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %100 = getelementptr inbounds i8, i8* %99, i64 8
  %101 = load i32, i32* %9, align 4
  %102 = add i32 %101, 32
  %103 = call i32 @align(i32 %102)
  %104 = call i32 @st4(i8* %100, i32 %103)
  %105 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %106 = getelementptr inbounds i8, i8* %105, i64 12
  %107 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @st4(i8* %106, i32 %108)
  %110 = load i32, i32* %12, align 4
  %111 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %112 = getelementptr inbounds i8, i8* %111, i64 2
  %113 = call i32 @write(i32 %110, i8* %112, i32 14)
  %114 = icmp ne i32 %113, 14
  br i1 %114, label %115, label %120

115:                                              ; preds = %93
  %116 = load i8**, i8*** %5, align 8
  %117 = getelementptr inbounds i8*, i8** %116, i64 2
  %118 = load i8*, i8** %117, align 8
  %119 = call i32 @die(i8* %118)
  br label %120

120:                                              ; preds = %115, %93
  %121 = load i32, i32* @is64bit, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %162

123:                                              ; preds = %120
  %124 = load i32, i32* %12, align 4
  %125 = call i64 @lseek(i32 %124, i32 4, i32 0)
  %126 = icmp slt i64 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %123
  %128 = call i32 @die(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  br label %129

129:                                              ; preds = %127, %123
  %130 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %131 = load i32, i32* %9, align 4
  %132 = add i32 %131, 32
  %133 = add i32 %132, 8191
  %134 = call i32 @align(i32 %133)
  %135 = zext i32 %134 to i64
  %136 = load i32, i32* %8, align 4
  %137 = zext i32 %136 to i64
  %138 = and i64 %137, -4194304
  %139 = sub i64 %135, %138
  %140 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = zext i32 %141 to i64
  %143 = add i64 %139, %142
  %144 = trunc i64 %143 to i32
  %145 = call i32 @st4(i8* %130, i32 %144)
  %146 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %147 = getelementptr inbounds i8, i8* %146, i64 4
  %148 = call i32 @st4(i8* %147, i32 0)
  %149 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %150 = getelementptr inbounds i8, i8* %149, i64 8
  %151 = call i32 @st4(i8* %150, i32 0)
  %152 = load i32, i32* %12, align 4
  %153 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %154 = call i32 @write(i32 %152, i8* %153, i32 12)
  %155 = icmp ne i32 %154, 12
  br i1 %155, label %156, label %161

156:                                              ; preds = %129
  %157 = load i8**, i8*** %5, align 8
  %158 = getelementptr inbounds i8*, i8** %157, i64 2
  %159 = load i8*, i8** %158, align 8
  %160 = call i32 @die(i8* %159)
  br label %161

161:                                              ; preds = %156, %129
  br label %162

162:                                              ; preds = %161, %120
  %163 = load i32, i32* %12, align 4
  %164 = load i32, i32* @AOUT_TEXT_OFFSET, align 4
  %165 = load i32, i32* %8, align 4
  %166 = sub i32 %164, %165
  %167 = load i32, i32* %9, align 4
  %168 = add i32 %167, 32
  %169 = call i32 @align(i32 %168)
  %170 = add i32 %166, %169
  %171 = call i64 @lseek(i32 %163, i32 %170, i32 0)
  %172 = icmp slt i64 %171, 0
  br i1 %172, label %173, label %175

173:                                              ; preds = %162
  %174 = call i32 @die(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  br label %175

175:                                              ; preds = %173, %162
  %176 = load i8**, i8*** %5, align 8
  %177 = getelementptr inbounds i8*, i8** %176, i64 4
  %178 = load i8*, i8** %177, align 8
  %179 = load i32, i32* @O_RDONLY, align 4
  %180 = call i32 @open(i8* %178, i32 %179)
  store i32 %180, i32* %13, align 4
  %181 = icmp slt i32 %180, 0
  br i1 %181, label %182, label %187

182:                                              ; preds = %175
  %183 = load i8**, i8*** %5, align 8
  %184 = getelementptr inbounds i8*, i8** %183, i64 4
  %185 = load i8*, i8** %184, align 8
  %186 = call i32 @die(i8* %185)
  br label %187

187:                                              ; preds = %182, %175
  br label %188

188:                                              ; preds = %205, %187
  %189 = load i32, i32* %13, align 4
  %190 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %191 = call i32 @read(i32 %189, i8* %190, i32 1024)
  store i32 %191, i32* %7, align 4
  %192 = icmp ugt i32 %191, 0
  br i1 %192, label %193, label %206

193:                                              ; preds = %188
  %194 = load i32, i32* %12, align 4
  %195 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %196 = load i32, i32* %7, align 4
  %197 = call i32 @write(i32 %194, i8* %195, i32 %196)
  %198 = load i32, i32* %7, align 4
  %199 = icmp ne i32 %197, %198
  br i1 %199, label %200, label %205

200:                                              ; preds = %193
  %201 = load i8**, i8*** %5, align 8
  %202 = getelementptr inbounds i8*, i8** %201, i64 2
  %203 = load i8*, i8** %202, align 8
  %204 = call i32 @die(i8* %203)
  br label %205

205:                                              ; preds = %200, %193
  br label %188

206:                                              ; preds = %188
  %207 = load i32, i32* %12, align 4
  %208 = call i64 @close(i32 %207)
  %209 = icmp slt i64 %208, 0
  br i1 %209, label %210, label %212

210:                                              ; preds = %206
  %211 = call i32 @die(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  br label %212

212:                                              ; preds = %210, %206
  %213 = load i32, i32* %13, align 4
  %214 = call i64 @close(i32 %213)
  %215 = icmp slt i64 %214, 0
  br i1 %215, label %216, label %218

216:                                              ; preds = %212
  %217 = call i32 @die(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  br label %218

218:                                              ; preds = %216, %212
  ret i32 0
}

declare dso_local i32 @usage(...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @die(i8*) #1

declare dso_local i32 @get_start_end(i8*, i32*, i32*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @get_hdrs_offset(i32, i8*) #1

declare dso_local i64 @lseek(i32, i32, i32) #1

declare dso_local i32 @st4(i8*, i32) #1

declare dso_local i32 @align(i32) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i64 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
