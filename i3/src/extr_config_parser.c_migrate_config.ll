; ModuleID = '/home/carl/AnghaBench/i3/src/extr_config_parser.c_migrate_config.c'
source_filename = "/home/carl/AnghaBench/i3/src/extr_config_parser.c_migrate_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [39 x i8] c"migrate_config: Could not create pipes\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Could not fork()\00", align 1
@migrate_config.argv = internal global [2 x i8*] zeroinitializer, align 16
@.str.2 = private unnamed_addr constant [24 x i8] c"i3-migrate-config-to-v4\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Could not write to pipe\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"Cannot read from pipe\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [89 x i8] c"Child did not terminate normally, using old config file (will lead to broken behaviour)\0A\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"Migration process exit code was != 0\0A\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"could not start the migration script\0A\00", align 1
@.str.8 = private unnamed_addr constant [82 x i8] c"This already was a v4 config. Please add the following line to your config file:\0A\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"# i3 config file (v4)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32)* @migrate_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @migrate_config(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [2 x i32], align 4
  %7 = alloca [2 x i32], align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %15 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %16 = call i64 @pipe(i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %2
  %19 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %20 = call i64 @pipe(i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %18, %2
  %23 = call i32 @warn(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  store i8* null, i8** %3, align 8
  br label %139

24:                                               ; preds = %18
  %25 = call i32 (...) @fork()
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = call i32 @warn(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  store i8* null, i8** %3, align 8
  br label %139

30:                                               ; preds = %24
  %31 = load i32, i32* %8, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %47

33:                                               ; preds = %30
  %34 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @close(i32 %35)
  %37 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @dup2(i32 %38, i32 0)
  %40 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @close(i32 %41)
  %43 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @dup2(i32 %44, i32 1)
  %46 = call i32 @exec_i3_utility(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @migrate_config.argv, i64 0, i64 0))
  br label %47

47:                                               ; preds = %33, %30
  %48 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @close(i32 %49)
  %51 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %52 = load i32, i32* %51, align 4
  %53 = load i8*, i8** %4, align 8
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @writeall(i32 %52, i8* %53, i32 %54)
  %56 = icmp eq i32 %55, -1
  br i1 %56, label %57, label %59

57:                                               ; preds = %47
  %58 = call i32 @warn(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  store i8* null, i8** %3, align 8
  br label %139

59:                                               ; preds = %47
  %60 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @close(i32 %61)
  %63 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @close(i32 %64)
  store i32 65535, i32* %9, align 4
  %66 = load i32, i32* %9, align 4
  %67 = call i8* @scalloc(i32 %66, i32 1)
  store i8* %67, i8** %10, align 8
  store i32 0, i32* %11, align 4
  br label %68

68:                                               ; preds = %99, %59
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* %9, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %78

72:                                               ; preds = %68
  %73 = load i32, i32* %9, align 4
  %74 = add nsw i32 %73, 65535
  store i32 %74, i32* %9, align 4
  %75 = load i8*, i8** %10, align 8
  %76 = load i32, i32* %9, align 4
  %77 = call i8* @srealloc(i8* %75, i32 %76)
  store i8* %77, i8** %10, align 8
  br label %78

78:                                               ; preds = %72, %68
  %79 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %80 = load i32, i32* %79, align 4
  %81 = load i8*, i8** %10, align 8
  %82 = load i32, i32* %11, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %81, i64 %83
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* %11, align 4
  %87 = sub nsw i32 %85, %86
  %88 = call i32 @read(i32 %80, i8* %84, i32 %87)
  store i32 %88, i32* %12, align 4
  %89 = load i32, i32* %12, align 4
  %90 = icmp eq i32 %89, -1
  br i1 %90, label %91, label %95

91:                                               ; preds = %78
  %92 = call i32 @warn(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %93 = load i8*, i8** %10, align 8
  %94 = call i32 @FREE(i8* %93)
  store i8* null, i8** %3, align 8
  br label %139

95:                                               ; preds = %78
  %96 = load i32, i32* %12, align 4
  %97 = load i32, i32* %11, align 4
  %98 = add nsw i32 %97, %96
  store i32 %98, i32* %11, align 4
  br label %99

99:                                               ; preds = %95
  %100 = load i32, i32* %12, align 4
  %101 = icmp sgt i32 %100, 0
  br i1 %101, label %68, label %102

102:                                              ; preds = %99
  %103 = call i32 @wait(i32* %13)
  %104 = load i32, i32* %13, align 4
  %105 = call i32 @WIFEXITED(i32 %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %112, label %107

107:                                              ; preds = %102
  %108 = load i32, i32* @stderr, align 4
  %109 = call i32 @fprintf(i32 %108, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.5, i64 0, i64 0))
  %110 = load i8*, i8** %10, align 8
  %111 = call i32 @FREE(i8* %110)
  store i8* null, i8** %3, align 8
  br label %139

112:                                              ; preds = %102
  %113 = load i32, i32* %13, align 4
  %114 = call i32 @WEXITSTATUS(i32 %113)
  store i32 %114, i32* %14, align 4
  %115 = load i32, i32* %14, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %137

117:                                              ; preds = %112
  %118 = load i32, i32* @stderr, align 4
  %119 = call i32 @fprintf(i32 %118, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0))
  %120 = load i32, i32* %14, align 4
  %121 = icmp eq i32 %120, 2
  br i1 %121, label %122, label %125

122:                                              ; preds = %117
  %123 = load i32, i32* @stderr, align 4
  %124 = call i32 @fprintf(i32 %123, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0))
  br label %134

125:                                              ; preds = %117
  %126 = load i32, i32* %14, align 4
  %127 = icmp eq i32 %126, 1
  br i1 %127, label %128, label %133

128:                                              ; preds = %125
  %129 = load i32, i32* @stderr, align 4
  %130 = call i32 @fprintf(i32 %129, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.8, i64 0, i64 0))
  %131 = load i32, i32* @stderr, align 4
  %132 = call i32 @fprintf(i32 %131, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0))
  br label %133

133:                                              ; preds = %128, %125
  br label %134

134:                                              ; preds = %133, %122
  %135 = load i8*, i8** %10, align 8
  %136 = call i32 @FREE(i8* %135)
  store i8* null, i8** %3, align 8
  br label %139

137:                                              ; preds = %112
  %138 = load i8*, i8** %10, align 8
  store i8* %138, i8** %3, align 8
  br label %139

139:                                              ; preds = %137, %134, %107, %91, %57, %28, %22
  %140 = load i8*, i8** %3, align 8
  ret i8* %140
}

declare dso_local i64 @pipe(i32*) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i32 @fork(...) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @dup2(i32, i32) #1

declare dso_local i32 @exec_i3_utility(i8*, i8**) #1

declare dso_local i32 @writeall(i32, i8*, i32) #1

declare dso_local i8* @scalloc(i32, i32) #1

declare dso_local i8* @srealloc(i8*, i32) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @FREE(i8*) #1

declare dso_local i32 @wait(i32*) #1

declare dso_local i32 @WIFEXITED(i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @WEXITSTATUS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
