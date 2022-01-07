; ModuleID = '/home/carl/AnghaBench/kphp-kdb/TL/extr_tlclient.c_tl_completion.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/TL/extr_tlclient.c_tl_completion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_expression = type { i32 }

@client_command_generator = common dso_local global i32 0, align 4
@rl_line_buffer = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"help \00", align 1
@tl_command_generator = common dso_local global i32 0, align 4
@expected_type = common dso_local global i64 0, align 8
@tl_type_generator = common dso_local global i32 0, align 4
@expected_expr = common dso_local global %struct.tl_expression* null, align 8
@tl_arg_generator = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8** (i8*, i32, i32)* @tl_completion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8** @tl_completion(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.tl_expression*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.tl_expression*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load i8*, i8** %5, align 8
  %17 = load i32, i32* @client_command_generator, align 4
  %18 = call i8** @rl_completion_matches(i8* %16, i32 %17)
  store i8** %18, i8*** %4, align 8
  br label %151

19:                                               ; preds = %3
  %20 = load i32, i32* %6, align 4
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %28

22:                                               ; preds = %19
  %23 = load i8*, i8** @rl_line_buffer, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 40
  br i1 %27, label %35, label %28

28:                                               ; preds = %22, %19
  %29 = load i32, i32* %6, align 4
  %30 = icmp eq i32 %29, 5
  br i1 %30, label %31, label %39

31:                                               ; preds = %28
  %32 = load i8*, i8** @rl_line_buffer, align 8
  %33 = call i32 @memcmp(i8* %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %31, %22
  %36 = load i8*, i8** %5, align 8
  %37 = load i32, i32* @tl_command_generator, align 4
  %38 = call i8** @rl_completion_matches(i8* %36, i32 %37)
  store i8** %38, i8*** %4, align 8
  br label %151

39:                                               ; preds = %31, %28
  %40 = load i32, i32* %6, align 4
  %41 = sub nsw i32 %40, 1
  store i32 %41, i32* %8, align 4
  br label %42

42:                                               ; preds = %73, %39
  %43 = load i32, i32* %8, align 4
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %62

45:                                               ; preds = %42
  %46 = load i8*, i8** @rl_line_buffer, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %46, i64 %48
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp ne i32 %51, 40
  br i1 %52, label %53, label %62

53:                                               ; preds = %45
  %54 = load i8*, i8** @rl_line_buffer, align 8
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %54, i64 %56
  %58 = load i8, i8* %57, align 1
  %59 = call i32 @isspace(i8 signext %58)
  %60 = icmp ne i32 %59, 0
  %61 = xor i1 %60, true
  br label %62

62:                                               ; preds = %53, %45, %42
  %63 = phi i1 [ false, %45 ], [ false, %42 ], [ %61, %53 ]
  br i1 %63, label %64, label %76

64:                                               ; preds = %62
  %65 = load i8*, i8** @rl_line_buffer, align 8
  %66 = load i32, i32* %8, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %65, i64 %67
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 41
  br i1 %71, label %72, label %73

72:                                               ; preds = %64
  store i32 0, i32* %8, align 4
  br label %73

73:                                               ; preds = %72, %64
  %74 = load i32, i32* %8, align 4
  %75 = add nsw i32 %74, -1
  store i32 %75, i32* %8, align 4
  br label %42

76:                                               ; preds = %62
  %77 = load i32, i32* %8, align 4
  %78 = icmp sgt i32 %77, 0
  br i1 %78, label %79, label %140

79:                                               ; preds = %76
  %80 = load i8*, i8** @rl_line_buffer, align 8
  %81 = load i32, i32* %8, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8, i8* %80, i64 %82
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp eq i32 %85, 40
  br i1 %86, label %87, label %140

87:                                               ; preds = %79
  %88 = load i8*, i8** @rl_line_buffer, align 8
  %89 = load i32, i32* %8, align 4
  %90 = sub nsw i32 %89, 1
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %88, i64 %91
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp eq i32 %94, 58
  br i1 %95, label %96, label %140

96:                                               ; preds = %87
  %97 = load i32, i32* %8, align 4
  %98 = sub nsw i32 %97, 2
  store i32 %98, i32* %9, align 4
  br label %99

99:                                               ; preds = %113, %96
  %100 = load i32, i32* %9, align 4
  %101 = icmp sgt i32 %100, 0
  br i1 %101, label %102, label %111

102:                                              ; preds = %99
  %103 = load i8*, i8** @rl_line_buffer, align 8
  %104 = load i32, i32* %9, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8, i8* %103, i64 %105
  %107 = load i8, i8* %106, align 1
  %108 = call i32 @isspace(i8 signext %107)
  %109 = icmp ne i32 %108, 0
  %110 = xor i1 %109, true
  br label %111

111:                                              ; preds = %102, %99
  %112 = phi i1 [ false, %99 ], [ %110, %102 ]
  br i1 %112, label %113, label %116

113:                                              ; preds = %111
  %114 = load i32, i32* %9, align 4
  %115 = add nsw i32 %114, -1
  store i32 %115, i32* %9, align 4
  br label %99

116:                                              ; preds = %111
  %117 = load i32, i32* %9, align 4
  %118 = call %struct.tl_expression* @find_expression(i32 %117)
  store %struct.tl_expression* %118, %struct.tl_expression** %10, align 8
  %119 = load %struct.tl_expression*, %struct.tl_expression** %10, align 8
  %120 = icmp ne %struct.tl_expression* %119, null
  br i1 %120, label %121, label %139

121:                                              ; preds = %116
  %122 = load i8*, i8** @rl_line_buffer, align 8
  %123 = load i32, i32* %9, align 4
  %124 = add nsw i32 %123, 1
  %125 = load i32, i32* %8, align 4
  %126 = sub nsw i32 %125, 1
  %127 = call i8* @cstr_substr(i8* %122, i32 %124, i32 %126)
  store i8* %127, i8** %11, align 8
  %128 = load %struct.tl_expression*, %struct.tl_expression** %10, align 8
  %129 = load i8*, i8** %11, align 8
  %130 = call i64 @tl_expression_get_argument_type(%struct.tl_expression* %128, i8* %129)
  store i64 %130, i64* @expected_type, align 8
  %131 = call i32 @cstr_free(i8** %11)
  %132 = load i64, i64* @expected_type, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %121
  %135 = load i8*, i8** %5, align 8
  %136 = load i32, i32* @tl_type_generator, align 4
  %137 = call i8** @rl_completion_matches(i8* %135, i32 %136)
  store i8** %137, i8*** %4, align 8
  br label %151

138:                                              ; preds = %121
  br label %139

139:                                              ; preds = %138, %116
  br label %140

140:                                              ; preds = %139, %87, %79, %76
  %141 = load i32, i32* %6, align 4
  %142 = call %struct.tl_expression* @find_expression(i32 %141)
  store %struct.tl_expression* %142, %struct.tl_expression** %12, align 8
  %143 = load %struct.tl_expression*, %struct.tl_expression** %12, align 8
  %144 = icmp ne %struct.tl_expression* %143, null
  br i1 %144, label %145, label %150

145:                                              ; preds = %140
  %146 = load %struct.tl_expression*, %struct.tl_expression** %12, align 8
  store %struct.tl_expression* %146, %struct.tl_expression** @expected_expr, align 8
  %147 = load i8*, i8** %5, align 8
  %148 = load i32, i32* @tl_arg_generator, align 4
  %149 = call i8** @rl_completion_matches(i8* %147, i32 %148)
  store i8** %149, i8*** %4, align 8
  br label %151

150:                                              ; preds = %140
  store i8** null, i8*** %4, align 8
  br label %151

151:                                              ; preds = %150, %145, %134, %35, %15
  %152 = load i8**, i8*** %4, align 8
  ret i8** %152
}

declare dso_local i8** @rl_completion_matches(i8*, i32) #1

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @isspace(i8 signext) #1

declare dso_local %struct.tl_expression* @find_expression(i32) #1

declare dso_local i8* @cstr_substr(i8*, i32, i32) #1

declare dso_local i64 @tl_expression_get_argument_type(%struct.tl_expression*, i8*) #1

declare dso_local i32 @cstr_free(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
