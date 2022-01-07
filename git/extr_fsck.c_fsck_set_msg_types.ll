; ModuleID = '/home/carl/AnghaBench/git/extr_fsck.c_fsck_set_msg_types.c'
source_filename = "/home/carl/AnghaBench/git/extr_fsck.c_fsck_set_msg_types.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsck_options = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c" ,|\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"skiplist\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"skiplist requires a path\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"Missing '=': '%s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fsck_set_msg_types(%struct.fsck_options* %0, i8* %1) #0 {
  %3 = alloca %struct.fsck_options*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.fsck_options* %0, %struct.fsck_options** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call i8* @xstrdup(i8* %10)
  store i8* %11, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  store i8* %12, i8** %6, align 8
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %109, %88, %30, %2
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  br i1 %16, label %17, label %123

17:                                               ; preds = %13
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 @strcspn(i8* %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 %19, i32* %8, align 4
  %20 = load i8*, i8** %5, align 8
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8, i8* %20, i64 %22
  %24 = load i8, i8* %23, align 1
  %25 = icmp ne i8 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %17
  %31 = load i8*, i8** %5, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %5, align 8
  br label %13

33:                                               ; preds = %17
  %34 = load i8*, i8** %5, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %34, i64 %36
  store i8 0, i8* %37, align 1
  store i32 0, i32* %9, align 4
  br label %38

38:                                               ; preds = %71, %33
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %58

42:                                               ; preds = %38
  %43 = load i8*, i8** %5, align 8
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp ne i32 %48, 61
  br i1 %49, label %50, label %58

50:                                               ; preds = %42
  %51 = load i8*, i8** %5, align 8
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %51, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp ne i32 %56, 58
  br label %58

58:                                               ; preds = %50, %42, %38
  %59 = phi i1 [ false, %42 ], [ false, %38 ], [ %57, %50 ]
  br i1 %59, label %60, label %74

60:                                               ; preds = %58
  %61 = load i8*, i8** %5, align 8
  %62 = load i32, i32* %9, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %61, i64 %63
  %65 = load i8, i8* %64, align 1
  %66 = call signext i8 @tolower(i8 signext %65)
  %67 = load i8*, i8** %5, align 8
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %67, i64 %69
  store i8 %66, i8* %70, align 1
  br label %71

71:                                               ; preds = %60
  %72 = load i32, i32* %9, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %9, align 4
  br label %38

74:                                               ; preds = %58
  %75 = load i8*, i8** %5, align 8
  %76 = load i32, i32* %9, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %75, i64 %77
  store i8 0, i8* %78, align 1
  %79 = load i8*, i8** %5, align 8
  %80 = call i32 @strcmp(i8* %79, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %102, label %82

82:                                               ; preds = %74
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* %8, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %82
  %87 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %88

88:                                               ; preds = %86, %82
  %89 = load %struct.fsck_options*, %struct.fsck_options** %3, align 8
  %90 = getelementptr inbounds %struct.fsck_options, %struct.fsck_options* %89, i32 0, i32 0
  %91 = load i8*, i8** %5, align 8
  %92 = load i32, i32* %9, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8, i8* %91, i64 %93
  %95 = getelementptr inbounds i8, i8* %94, i64 1
  %96 = call i32 @oidset_parse_file(i32* %90, i8* %95)
  %97 = load i32, i32* %8, align 4
  %98 = add nsw i32 %97, 1
  %99 = load i8*, i8** %5, align 8
  %100 = sext i32 %98 to i64
  %101 = getelementptr inbounds i8, i8* %99, i64 %100
  store i8* %101, i8** %5, align 8
  br label %13

102:                                              ; preds = %74
  %103 = load i32, i32* %9, align 4
  %104 = load i32, i32* %8, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %109

106:                                              ; preds = %102
  %107 = load i8*, i8** %5, align 8
  %108 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8* %107)
  br label %109

109:                                              ; preds = %106, %102
  %110 = load %struct.fsck_options*, %struct.fsck_options** %3, align 8
  %111 = load i8*, i8** %5, align 8
  %112 = load i8*, i8** %5, align 8
  %113 = load i32, i32* %9, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8, i8* %112, i64 %114
  %116 = getelementptr inbounds i8, i8* %115, i64 1
  %117 = call i32 @fsck_set_msg_type(%struct.fsck_options* %110, i8* %111, i8* %116)
  %118 = load i32, i32* %8, align 4
  %119 = add nsw i32 %118, 1
  %120 = load i8*, i8** %5, align 8
  %121 = sext i32 %119 to i64
  %122 = getelementptr inbounds i8, i8* %120, i64 %121
  store i8* %122, i8** %5, align 8
  br label %13

123:                                              ; preds = %13
  %124 = load i8*, i8** %6, align 8
  %125 = call i32 @free(i8* %124)
  ret void
}

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i32 @strcspn(i8*, i8*) #1

declare dso_local signext i8 @tolower(i8 signext) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @die(i8*, ...) #1

declare dso_local i32 @oidset_parse_file(i32*, i8*) #1

declare dso_local i32 @fsck_set_msg_type(%struct.fsck_options*, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
