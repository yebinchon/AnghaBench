; ModuleID = '/home/carl/AnghaBench/kphp-kdb/mutual-friends/extr_mf-merge-files.c_init_data.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/mutual-friends/extr_mf-merge-files.c_init_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@engineN = common dso_local global i32 0, align 4
@f_buff = common dso_local global i8** null, align 8
@f_header = common dso_local global i32** null, align 8
@f_buff_size = common dso_local global i8* null, align 8
@f_buff_r = common dso_local global i8* null, align 8
@f_buff_i = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"from%03d\00", align 1
@fd = common dso_local global i32* null, align 8
@MY_BUFF_SIZE = common dso_local global i32 0, align 4
@fsize = common dso_local global i64* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [66 x i8] c"something wrong with file <%s> : wrong size %lld (%lld expected)\0A\00", align 1
@un = common dso_local global i32 0, align 4
@friends_name = common dso_local global i8* null, align 8
@friendsI = common dso_local global i32 0, align 4
@exceptions_name = common dso_local global i8* null, align 8
@exceptionsI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_data() #0 {
  %1 = alloca [50 x i8], align 16
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = load i32, i32* @engineN, align 4
  %6 = sext i32 %5 to i64
  %7 = mul i64 8, %6
  %8 = trunc i64 %7 to i32
  %9 = call i8* @qmalloc(i32 %8)
  %10 = bitcast i8* %9 to i8**
  store i8** %10, i8*** @f_buff, align 8
  %11 = load i32, i32* @engineN, align 4
  %12 = sext i32 %11 to i64
  %13 = mul i64 8, %12
  %14 = trunc i64 %13 to i32
  %15 = call i8* @qmalloc(i32 %14)
  %16 = bitcast i8* %15 to i32**
  store i32** %16, i32*** @f_header, align 8
  %17 = load i32, i32* @engineN, align 4
  %18 = sext i32 %17 to i64
  %19 = mul i64 4, %18
  %20 = trunc i64 %19 to i32
  %21 = call i8* @qmalloc0(i32 %20)
  store i8* %21, i8** @f_buff_size, align 8
  %22 = load i32, i32* @engineN, align 4
  %23 = sext i32 %22 to i64
  %24 = mul i64 4, %23
  %25 = trunc i64 %24 to i32
  %26 = call i8* @qmalloc0(i32 %25)
  store i8* %26, i8** @f_buff_r, align 8
  %27 = load i32, i32* @engineN, align 4
  %28 = sext i32 %27 to i64
  %29 = mul i64 4, %28
  %30 = trunc i64 %29 to i32
  %31 = call i8* @qmalloc0(i32 %30)
  store i8* %31, i8** @f_buff_i, align 8
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %128, %0
  %33 = load i32, i32* %2, align 4
  %34 = load i32, i32* @engineN, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %131

36:                                               ; preds = %32
  %37 = getelementptr inbounds [50 x i8], [50 x i8]* %1, i64 0, i64 0
  %38 = load i32, i32* %2, align 4
  %39 = call i32 @sprintf(i8* %37, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* %2, align 4
  %41 = getelementptr inbounds [50 x i8], [50 x i8]* %1, i64 0, i64 0
  %42 = call i64 @open_file(i32 %40, i8* %41, i32 -1)
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %36
  %45 = load i32*, i32** @fd, align 8
  %46 = load i32, i32* %2, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  store i32 -1, i32* %48, align 4
  br label %128

49:                                               ; preds = %36
  %50 = load i32, i32* @MY_BUFF_SIZE, align 4
  %51 = sext i32 %50 to i64
  %52 = mul i64 1, %51
  %53 = trunc i64 %52 to i32
  %54 = call i8* @qmalloc(i32 %53)
  %55 = load i8**, i8*** @f_buff, align 8
  %56 = load i32, i32* %2, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8*, i8** %55, i64 %57
  store i8* %54, i8** %58, align 8
  %59 = load i32*, i32** @fd, align 8
  %60 = load i32, i32* %2, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = call i32 (i32, ...) @read(i32 %63, i64* %3, i64 8)
  %65 = load i64, i64* %3, align 8
  %66 = load i64*, i64** @fsize, align 8
  %67 = load i32, i32* %2, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i64, i64* %66, i64 %68
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %65, %70
  br i1 %71, label %72, label %82

72:                                               ; preds = %49
  %73 = load i32, i32* @stderr, align 4
  %74 = getelementptr inbounds [50 x i8], [50 x i8]* %1, i64 0, i64 0
  %75 = load i64*, i64** @fsize, align 8
  %76 = load i32, i32* %2, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i64, i64* %75, i64 %77
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* %3, align 8
  %81 = call i32 @fprintf(i32 %73, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0), i8* %74, i64 %79, i64 %80)
  br label %82

82:                                               ; preds = %72, %49
  %83 = load i64, i64* %3, align 8
  %84 = load i64*, i64** @fsize, align 8
  %85 = load i32, i32* %2, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i64, i64* %84, i64 %86
  %88 = load i64, i64* %87, align 8
  %89 = icmp eq i64 %83, %88
  %90 = zext i1 %89 to i32
  %91 = call i32 @assert(i32 %90)
  %92 = load i32*, i32** @fd, align 8
  %93 = load i32, i32* %2, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = call i32 (i32, ...) @read(i32 %96, i32* %4, i64 4)
  %98 = load i32, i32* %4, align 4
  %99 = load i32, i32* @un, align 4
  %100 = add nsw i32 %99, 1
  %101 = icmp eq i32 %98, %100
  %102 = zext i1 %101 to i32
  %103 = call i32 @assert(i32 %102)
  %104 = load i32, i32* %4, align 4
  %105 = sext i32 %104 to i64
  %106 = mul i64 4, %105
  %107 = trunc i64 %106 to i32
  %108 = call i8* @qmalloc(i32 %107)
  %109 = bitcast i8* %108 to i32*
  %110 = load i32**, i32*** @f_header, align 8
  %111 = load i32, i32* %2, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32*, i32** %110, i64 %112
  store i32* %109, i32** %113, align 8
  %114 = load i32*, i32** @fd, align 8
  %115 = load i32, i32* %2, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = load i32**, i32*** @f_header, align 8
  %120 = load i32, i32* %2, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32*, i32** %119, i64 %121
  %123 = load i32*, i32** %122, align 8
  %124 = load i32, i32* %4, align 4
  %125 = sext i32 %124 to i64
  %126 = mul i64 4, %125
  %127 = call i32 (i32, ...) @read(i32 %118, i32* %123, i64 %126)
  br label %128

128:                                              ; preds = %82, %44
  %129 = load i32, i32* %2, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %2, align 4
  br label %32

131:                                              ; preds = %32
  %132 = load i8*, i8** @friends_name, align 8
  %133 = call i64 @strlen(i8* %132)
  %134 = icmp sgt i64 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %131
  %136 = load i32, i32* @friendsI, align 4
  %137 = load i8*, i8** @friends_name, align 8
  %138 = call i64 @open_file(i32 %136, i8* %137, i32 0)
  br label %139

139:                                              ; preds = %135, %131
  %140 = load i8*, i8** @exceptions_name, align 8
  %141 = call i64 @strlen(i8* %140)
  %142 = icmp sgt i64 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %139
  %144 = load i32, i32* @exceptionsI, align 4
  %145 = load i8*, i8** @exceptions_name, align 8
  %146 = call i64 @open_file(i32 %144, i8* %145, i32 0)
  br label %147

147:                                              ; preds = %143, %139
  ret void
}

declare dso_local i8* @qmalloc(i32) #1

declare dso_local i8* @qmalloc0(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i64 @open_file(i32, i8*, i32) #1

declare dso_local i32 @read(i32, ...) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i64, i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
