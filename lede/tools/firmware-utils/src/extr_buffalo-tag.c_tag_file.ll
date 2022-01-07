; ModuleID = '/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_buffalo-tag.c_tag_file.c'
source_filename = "/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_buffalo-tag.c_tag_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dhp = common dso_local global i64 0, align 8
@num_files = common dso_local global i32 0, align 4
@ifname = common dso_local global i32* null, align 8
@fsize = common dso_local global i64* null, align 8
@.str = private unnamed_addr constant [27 x i8] c"unable to get size of '%s'\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"no memory for buffer\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"unable to read from file '%s'\00", align 1
@ofname = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"unable to write to file '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @tag_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tag_file() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 -1, i32* %6, align 4
  %8 = load i64, i64* @dhp, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %0
  store i32 4, i32* %3, align 4
  br label %17

11:                                               ; preds = %0
  %12 = load i32, i32* @num_files, align 4
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  store i32 4, i32* %3, align 4
  br label %16

15:                                               ; preds = %11
  store i32 4, i32* %3, align 4
  br label %16

16:                                               ; preds = %15, %14
  br label %17

17:                                               ; preds = %16, %10
  %18 = load i32, i32* %3, align 4
  store i32 %18, i32* %4, align 4
  store i32 0, i32* %7, align 4
  br label %19

19:                                               ; preds = %57, %17
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @num_files, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %60

23:                                               ; preds = %19
  %24 = load i32*, i32** @ifname, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @get_file_size(i32 %28)
  %30 = load i64*, i64** @fsize, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i64, i64* %30, i64 %32
  store i64 %29, i64* %33, align 8
  %34 = load i64*, i64** @fsize, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i64, i64* %34, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %23
  %41 = load i32*, i32** @ifname, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %45)
  br label %147

47:                                               ; preds = %23
  %48 = load i64*, i64** @fsize, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i64, i64* %48, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = load i32, i32* %4, align 4
  %54 = sext i32 %53 to i64
  %55 = add nsw i64 %54, %52
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %47
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %7, align 4
  br label %19

60:                                               ; preds = %19
  %61 = load i32, i32* %4, align 4
  %62 = call i8* @malloc(i32 %61)
  store i8* %62, i8** %1, align 8
  %63 = load i8*, i8** %1, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %67, label %65

65:                                               ; preds = %60
  %66 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %147

67:                                               ; preds = %60
  %68 = load i32, i32* %3, align 4
  store i32 %68, i32* %2, align 4
  store i32 0, i32* %7, align 4
  br label %69

69:                                               ; preds = %108, %67
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* @num_files, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %111

73:                                               ; preds = %69
  %74 = load i32*, i32** @ifname, align 8
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = load i8*, i8** %1, align 8
  %80 = load i32, i32* %2, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8, i8* %79, i64 %81
  %83 = load i64*, i64** @fsize, align 8
  %84 = load i32, i32* %7, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i64, i64* %83, i64 %85
  %87 = load i64, i64* %86, align 8
  %88 = call i32 @read_file_to_buf(i32 %78, i8* %82, i64 %87)
  store i32 %88, i32* %5, align 4
  %89 = load i32, i32* %5, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %73
  %92 = load i32*, i32** @ifname, align 8
  %93 = load i32, i32* %7, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %96)
  br label %144

98:                                               ; preds = %73
  %99 = load i64*, i64** @fsize, align 8
  %100 = load i32, i32* %7, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i64, i64* %99, i64 %101
  %103 = load i64, i64* %102, align 8
  %104 = load i32, i32* %2, align 4
  %105 = sext i32 %104 to i64
  %106 = add nsw i64 %105, %103
  %107 = trunc i64 %106 to i32
  store i32 %107, i32* %2, align 4
  br label %108

108:                                              ; preds = %98
  %109 = load i32, i32* %7, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %7, align 4
  br label %69

111:                                              ; preds = %69
  %112 = load i64, i64* @dhp, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %121

114:                                              ; preds = %111
  %115 = load i8*, i8** %1, align 8
  %116 = load i64*, i64** @fsize, align 8
  %117 = getelementptr inbounds i64, i64* %116, i64 0
  %118 = load i64, i64* %117, align 8
  %119 = add nsw i64 %118, 200
  %120 = call i32 @fixup_tag3(i8* %115, i64 %119)
  br label %133

121:                                              ; preds = %111
  %122 = load i32, i32* @num_files, align 4
  %123 = icmp eq i32 %122, 1
  br i1 %123, label %124, label %128

124:                                              ; preds = %121
  %125 = load i8*, i8** %1, align 8
  %126 = load i32, i32* %4, align 4
  %127 = call i32 @fixup_tag(i8* %125, i32 %126)
  br label %132

128:                                              ; preds = %121
  %129 = load i8*, i8** %1, align 8
  %130 = load i32, i32* %4, align 4
  %131 = call i32 @fixup_tag2(i8* %129, i32 %130)
  br label %132

132:                                              ; preds = %128, %124
  br label %133

133:                                              ; preds = %132, %114
  %134 = load i32, i32* @ofname, align 4
  %135 = load i8*, i8** %1, align 8
  %136 = load i32, i32* %4, align 4
  %137 = call i32 @write_buf_to_file(i32 %134, i8* %135, i32 %136)
  store i32 %137, i32* %5, align 4
  %138 = load i32, i32* %5, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %133
  %141 = load i32, i32* @ofname, align 4
  %142 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %141)
  br label %144

143:                                              ; preds = %133
  store i32 0, i32* %6, align 4
  br label %144

144:                                              ; preds = %143, %140, %91
  %145 = load i8*, i8** %1, align 8
  %146 = call i32 @free(i8* %145)
  br label %147

147:                                              ; preds = %144, %65, %40
  %148 = load i32, i32* %6, align 4
  ret i32 %148
}

declare dso_local i64 @get_file_size(i32) #1

declare dso_local i32 @ERR(i8*, ...) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @read_file_to_buf(i32, i8*, i64) #1

declare dso_local i32 @fixup_tag3(i8*, i64) #1

declare dso_local i32 @fixup_tag(i8*, i32) #1

declare dso_local i32 @fixup_tag2(i8*, i32) #1

declare dso_local i32 @write_buf_to_file(i32, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
