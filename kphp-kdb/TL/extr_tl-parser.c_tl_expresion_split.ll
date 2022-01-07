; ModuleID = '/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser.c_tl_expresion_split.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser.c_tl_expresion_split.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_token = type { i8*, %struct.tl_token* }
%struct.tl_compiler = type { i32 }
%struct.tl_expression = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"bytes\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"string\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"Bytes\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"String\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c":bytes\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c":string\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c":Bytes\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c":String\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tl_token* @tl_expresion_split(%struct.tl_compiler* %0, %struct.tl_expression* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.tl_token*, align 8
  %6 = alloca %struct.tl_compiler*, align 8
  %7 = alloca %struct.tl_expression*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.tl_token*, align 8
  %14 = alloca %struct.tl_token*, align 8
  %15 = alloca i32, align 4
  store %struct.tl_compiler* %0, %struct.tl_compiler** %6, align 8
  store %struct.tl_expression* %1, %struct.tl_expression** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load i8*, i8** %8, align 8
  %17 = call i32 @strlen(i8* %16)
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = call i8* @zmalloc(i32 %19)
  store i8* %20, i8** %11, align 8
  %21 = load i8*, i8** %11, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = call i32 @strcpy(i8* %21, i8* %22)
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %4
  %27 = load %struct.tl_compiler*, %struct.tl_compiler** %6, align 8
  %28 = load %struct.tl_expression*, %struct.tl_expression** %7, align 8
  %29 = load i8*, i8** %11, align 8
  %30 = call i64 @tl_expression_remove_sugar(%struct.tl_compiler* %27, %struct.tl_expression* %28, i8* %29)
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  store %struct.tl_token* null, %struct.tl_token** %5, align 8
  br label %140

33:                                               ; preds = %26
  br label %34

34:                                               ; preds = %33, %4
  store %struct.tl_token* null, %struct.tl_token** %13, align 8
  %35 = load i8*, i8** %11, align 8
  %36 = call i8* @strtok(i8* %35, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %36, i8** %12, align 8
  br label %37

37:                                               ; preds = %132, %34
  %38 = load i8*, i8** %12, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %134

40:                                               ; preds = %37
  %41 = call %struct.tl_token* @zmalloc0(i32 16)
  store %struct.tl_token* %41, %struct.tl_token** %14, align 8
  %42 = load i8*, i8** %12, align 8
  %43 = call i32 @strcmp(i8* %42, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %40
  %46 = call i8* @cstr_dup(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %47 = load %struct.tl_token*, %struct.tl_token** %14, align 8
  %48 = getelementptr inbounds %struct.tl_token, %struct.tl_token* %47, i32 0, i32 0
  store i8* %46, i8** %48, align 8
  br label %127

49:                                               ; preds = %40
  %50 = load i8*, i8** %12, align 8
  %51 = call i32 @strcmp(i8* %50, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %49
  %54 = call i8* @cstr_dup(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %55 = load %struct.tl_token*, %struct.tl_token** %14, align 8
  %56 = getelementptr inbounds %struct.tl_token, %struct.tl_token* %55, i32 0, i32 0
  store i8* %54, i8** %56, align 8
  br label %126

57:                                               ; preds = %49
  %58 = load i8*, i8** %12, align 8
  %59 = call i32 @strlen(i8* %58)
  store i32 %59, i32* %15, align 4
  %60 = load i32, i32* %15, align 4
  %61 = icmp sge i32 %60, 6
  br i1 %61, label %62, label %89

62:                                               ; preds = %57
  %63 = load i8*, i8** %12, align 8
  %64 = load i32, i32* %15, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %63, i64 %65
  %67 = getelementptr inbounds i8, i8* %66, i64 -6
  %68 = call i32 @strcmp(i8* %67, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %89, label %70

70:                                               ; preds = %62
  %71 = load i32, i32* %15, align 4
  %72 = add nsw i32 %71, 2
  %73 = call i8* @zmalloc(i32 %72)
  %74 = load %struct.tl_token*, %struct.tl_token** %14, align 8
  %75 = getelementptr inbounds %struct.tl_token, %struct.tl_token* %74, i32 0, i32 0
  store i8* %73, i8** %75, align 8
  %76 = load %struct.tl_token*, %struct.tl_token** %14, align 8
  %77 = getelementptr inbounds %struct.tl_token, %struct.tl_token* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  %79 = load i8*, i8** %12, align 8
  %80 = call i32 @strcpy(i8* %78, i8* %79)
  %81 = load %struct.tl_token*, %struct.tl_token** %14, align 8
  %82 = getelementptr inbounds %struct.tl_token, %struct.tl_token* %81, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = load i32, i32* %15, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8, i8* %83, i64 %85
  %87 = getelementptr inbounds i8, i8* %86, i64 -6
  %88 = call i32 @strcpy(i8* %87, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  br label %125

89:                                               ; preds = %62, %57
  %90 = load i32, i32* %15, align 4
  %91 = icmp sge i32 %90, 6
  br i1 %91, label %92, label %119

92:                                               ; preds = %89
  %93 = load i8*, i8** %12, align 8
  %94 = load i32, i32* %15, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8, i8* %93, i64 %95
  %97 = getelementptr inbounds i8, i8* %96, i64 -6
  %98 = call i32 @strcmp(i8* %97, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %119, label %100

100:                                              ; preds = %92
  %101 = load i32, i32* %15, align 4
  %102 = add nsw i32 %101, 2
  %103 = call i8* @zmalloc(i32 %102)
  %104 = load %struct.tl_token*, %struct.tl_token** %14, align 8
  %105 = getelementptr inbounds %struct.tl_token, %struct.tl_token* %104, i32 0, i32 0
  store i8* %103, i8** %105, align 8
  %106 = load %struct.tl_token*, %struct.tl_token** %14, align 8
  %107 = getelementptr inbounds %struct.tl_token, %struct.tl_token* %106, i32 0, i32 0
  %108 = load i8*, i8** %107, align 8
  %109 = load i8*, i8** %12, align 8
  %110 = call i32 @strcpy(i8* %108, i8* %109)
  %111 = load %struct.tl_token*, %struct.tl_token** %14, align 8
  %112 = getelementptr inbounds %struct.tl_token, %struct.tl_token* %111, i32 0, i32 0
  %113 = load i8*, i8** %112, align 8
  %114 = load i32, i32* %15, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8, i8* %113, i64 %115
  %117 = getelementptr inbounds i8, i8* %116, i64 -6
  %118 = call i32 @strcpy(i8* %117, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  br label %124

119:                                              ; preds = %92, %89
  %120 = load i8*, i8** %12, align 8
  %121 = call i8* @cstr_dup(i8* %120)
  %122 = load %struct.tl_token*, %struct.tl_token** %14, align 8
  %123 = getelementptr inbounds %struct.tl_token, %struct.tl_token* %122, i32 0, i32 0
  store i8* %121, i8** %123, align 8
  br label %124

124:                                              ; preds = %119, %100
  br label %125

125:                                              ; preds = %124, %70
  br label %126

126:                                              ; preds = %125, %53
  br label %127

127:                                              ; preds = %126, %45
  %128 = load %struct.tl_token*, %struct.tl_token** %13, align 8
  %129 = load %struct.tl_token*, %struct.tl_token** %14, align 8
  %130 = getelementptr inbounds %struct.tl_token, %struct.tl_token* %129, i32 0, i32 1
  store %struct.tl_token* %128, %struct.tl_token** %130, align 8
  %131 = load %struct.tl_token*, %struct.tl_token** %14, align 8
  store %struct.tl_token* %131, %struct.tl_token** %13, align 8
  br label %132

132:                                              ; preds = %127
  %133 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %133, i8** %12, align 8
  br label %37

134:                                              ; preds = %37
  %135 = load i8*, i8** %11, align 8
  %136 = load i32, i32* %10, align 4
  %137 = call i32 @zfree(i8* %135, i32 %136)
  %138 = load %struct.tl_token*, %struct.tl_token** %13, align 8
  %139 = call %struct.tl_token* @list_token_reverse(%struct.tl_token* %138)
  store %struct.tl_token* %139, %struct.tl_token** %5, align 8
  br label %140

140:                                              ; preds = %134, %32
  %141 = load %struct.tl_token*, %struct.tl_token** %5, align 8
  ret %struct.tl_token* %141
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @zmalloc(i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i64 @tl_expression_remove_sugar(%struct.tl_compiler*, %struct.tl_expression*, i8*) #1

declare dso_local i8* @strtok(i8*, i8*) #1

declare dso_local %struct.tl_token* @zmalloc0(i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i8* @cstr_dup(i8*) #1

declare dso_local i32 @zfree(i8*, i32) #1

declare dso_local %struct.tl_token* @list_token_reverse(%struct.tl_token*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
