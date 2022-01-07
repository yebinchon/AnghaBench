; ModuleID = '/home/carl/AnghaBench/git/t/helper/extr_test-delta.c_cmd__delta.c'
source_filename = "/home/carl/AnghaBench/git/t/helper/extr_test-delta.c_cmd__delta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64 }

@.str = private unnamed_addr constant [3 x i8] c"-d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"-p\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"usage: %s\0A\00", align 1
@usage_str = common dso_local global i8* null, align 8
@O_RDONLY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"delta operation failed (returned NULL)\0A\00", align 1
@O_WRONLY = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd__delta(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.stat, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 5
  br i1 %15, label %28, label %16

16:                                               ; preds = %2
  %17 = load i8**, i8*** %5, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 1
  %19 = load i8*, i8** %18, align 8
  %20 = call i64 @strcmp(i8* %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %16
  %23 = load i8**, i8*** %5, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 1
  %25 = load i8*, i8** %24, align 8
  %26 = call i64 @strcmp(i8* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %22, %2
  %29 = load i32, i32* @stderr, align 4
  %30 = load i8*, i8** @usage_str, align 8
  %31 = call i32 (i32, i8*, ...) @fprintf(i32 %29, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %30)
  store i32 1, i32* %3, align 4
  br label %154

32:                                               ; preds = %22, %16
  %33 = load i8**, i8*** %5, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i64 2
  %35 = load i8*, i8** %34, align 8
  %36 = load i32, i32* @O_RDONLY, align 4
  %37 = call i32 (i8*, i32, ...) @open(i8* %35, i32 %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %32
  %41 = load i32, i32* %6, align 4
  %42 = call i64 @fstat(i32 %41, %struct.stat* %7)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %40, %32
  %45 = load i8**, i8*** %5, align 8
  %46 = getelementptr inbounds i8*, i8** %45, i64 2
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @perror(i8* %47)
  store i32 1, i32* %3, align 4
  br label %154

49:                                               ; preds = %40
  %50 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %11, align 8
  %52 = load i64, i64* %11, align 8
  %53 = call i8* @xmalloc(i64 %52)
  store i8* %53, i8** %8, align 8
  %54 = load i32, i32* %6, align 4
  %55 = load i8*, i8** %8, align 8
  %56 = load i64, i64* %11, align 8
  %57 = call i64 @read_in_full(i32 %54, i8* %55, i64 %56)
  %58 = icmp slt i64 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %49
  %60 = load i8**, i8*** %5, align 8
  %61 = getelementptr inbounds i8*, i8** %60, i64 2
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 @perror(i8* %62)
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @close(i32 %64)
  store i32 1, i32* %3, align 4
  br label %154

66:                                               ; preds = %49
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @close(i32 %67)
  %69 = load i8**, i8*** %5, align 8
  %70 = getelementptr inbounds i8*, i8** %69, i64 3
  %71 = load i8*, i8** %70, align 8
  %72 = load i32, i32* @O_RDONLY, align 4
  %73 = call i32 (i8*, i32, ...) @open(i8* %71, i32 %72)
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %6, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %66
  %77 = load i32, i32* %6, align 4
  %78 = call i64 @fstat(i32 %77, %struct.stat* %7)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %76, %66
  %81 = load i8**, i8*** %5, align 8
  %82 = getelementptr inbounds i8*, i8** %81, i64 3
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 @perror(i8* %83)
  store i32 1, i32* %3, align 4
  br label %154

85:                                               ; preds = %76
  %86 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  store i64 %87, i64* %12, align 8
  %88 = load i64, i64* %12, align 8
  %89 = call i8* @xmalloc(i64 %88)
  store i8* %89, i8** %9, align 8
  %90 = load i32, i32* %6, align 4
  %91 = load i8*, i8** %9, align 8
  %92 = load i64, i64* %12, align 8
  %93 = call i64 @read_in_full(i32 %90, i8* %91, i64 %92)
  %94 = icmp slt i64 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %85
  %96 = load i8**, i8*** %5, align 8
  %97 = getelementptr inbounds i8*, i8** %96, i64 3
  %98 = load i8*, i8** %97, align 8
  %99 = call i32 @perror(i8* %98)
  %100 = load i32, i32* %6, align 4
  %101 = call i32 @close(i32 %100)
  store i32 1, i32* %3, align 4
  br label %154

102:                                              ; preds = %85
  %103 = load i32, i32* %6, align 4
  %104 = call i32 @close(i32 %103)
  %105 = load i8**, i8*** %5, align 8
  %106 = getelementptr inbounds i8*, i8** %105, i64 1
  %107 = load i8*, i8** %106, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 1
  %109 = load i8, i8* %108, align 1
  %110 = sext i8 %109 to i32
  %111 = icmp eq i32 %110, 100
  br i1 %111, label %112, label %118

112:                                              ; preds = %102
  %113 = load i8*, i8** %8, align 8
  %114 = load i64, i64* %11, align 8
  %115 = load i8*, i8** %9, align 8
  %116 = load i64, i64* %12, align 8
  %117 = call i8* @diff_delta(i8* %113, i64 %114, i8* %115, i64 %116, i64* %13, i32 0)
  store i8* %117, i8** %10, align 8
  br label %124

118:                                              ; preds = %102
  %119 = load i8*, i8** %8, align 8
  %120 = load i64, i64* %11, align 8
  %121 = load i8*, i8** %9, align 8
  %122 = load i64, i64* %12, align 8
  %123 = call i8* @patch_delta(i8* %119, i64 %120, i8* %121, i64 %122, i64* %13)
  store i8* %123, i8** %10, align 8
  br label %124

124:                                              ; preds = %118, %112
  %125 = load i8*, i8** %10, align 8
  %126 = icmp ne i8* %125, null
  br i1 %126, label %130, label %127

127:                                              ; preds = %124
  %128 = load i32, i32* @stderr, align 4
  %129 = call i32 (i32, i8*, ...) @fprintf(i32 %128, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %154

130:                                              ; preds = %124
  %131 = load i8**, i8*** %5, align 8
  %132 = getelementptr inbounds i8*, i8** %131, i64 4
  %133 = load i8*, i8** %132, align 8
  %134 = load i32, i32* @O_WRONLY, align 4
  %135 = load i32, i32* @O_CREAT, align 4
  %136 = or i32 %134, %135
  %137 = load i32, i32* @O_TRUNC, align 4
  %138 = or i32 %136, %137
  %139 = call i32 (i8*, i32, ...) @open(i8* %133, i32 %138, i32 438)
  store i32 %139, i32* %6, align 4
  %140 = load i32, i32* %6, align 4
  %141 = icmp slt i32 %140, 0
  br i1 %141, label %148, label %142

142:                                              ; preds = %130
  %143 = load i32, i32* %6, align 4
  %144 = load i8*, i8** %10, align 8
  %145 = load i64, i64* %13, align 8
  %146 = call i64 @write_in_full(i32 %143, i8* %144, i64 %145)
  %147 = icmp slt i64 %146, 0
  br i1 %147, label %148, label %153

148:                                              ; preds = %142, %130
  %149 = load i8**, i8*** %5, align 8
  %150 = getelementptr inbounds i8*, i8** %149, i64 4
  %151 = load i8*, i8** %150, align 8
  %152 = call i32 @perror(i8* %151)
  store i32 1, i32* %3, align 4
  br label %154

153:                                              ; preds = %142
  store i32 0, i32* %3, align 4
  br label %154

154:                                              ; preds = %153, %148, %127, %95, %80, %59, %44, %28
  %155 = load i32, i32* %3, align 4
  ret i32 %155
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @open(i8*, i32, ...) #1

declare dso_local i64 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i8* @xmalloc(i64) #1

declare dso_local i64 @read_in_full(i32, i8*, i64) #1

declare dso_local i32 @close(i32) #1

declare dso_local i8* @diff_delta(i8*, i64, i8*, i64, i64*, i32) #1

declare dso_local i8* @patch_delta(i8*, i64, i8*, i64, i64*) #1

declare dso_local i64 @write_in_full(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
