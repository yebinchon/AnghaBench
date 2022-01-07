; ModuleID = '/home/carl/AnghaBench/git/extr_fast-import.c_parse_reset_branch.c'
source_filename = "/home/carl/AnghaBench/git/extr_fast-import.c_parse_reset_branch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tag = type { %struct.tag*, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.branch = type { i32, i64, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"refs/tags/\00", align 1
@first_tag = common dso_local global %struct.tag* null, align 8
@last_tag = common dso_local global %struct.tag* null, align 8
@command_buf = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@unread_command_buf = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @parse_reset_branch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_reset_branch(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.branch*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.tag*, align 8
  %6 = alloca %struct.tag*, align 8
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = call %struct.branch* @lookup_branch(i8* %7)
  store %struct.branch* %8, %struct.branch** %3, align 8
  %9 = load %struct.branch*, %struct.branch** %3, align 8
  %10 = icmp ne %struct.branch* %9, null
  br i1 %10, label %11, label %44

11:                                               ; preds = %1
  %12 = load %struct.branch*, %struct.branch** %3, align 8
  %13 = getelementptr inbounds %struct.branch, %struct.branch* %12, i32 0, i32 3
  %14 = call i32 @oidclr(i32* %13)
  %15 = load %struct.branch*, %struct.branch** %3, align 8
  %16 = getelementptr inbounds %struct.branch, %struct.branch* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i64 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = call i32 @oidclr(i32* %20)
  %22 = load %struct.branch*, %struct.branch** %3, align 8
  %23 = getelementptr inbounds %struct.branch, %struct.branch* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i64 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = call i32 @oidclr(i32* %27)
  %29 = load %struct.branch*, %struct.branch** %3, align 8
  %30 = getelementptr inbounds %struct.branch, %struct.branch* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %43

34:                                               ; preds = %11
  %35 = load %struct.branch*, %struct.branch** %3, align 8
  %36 = getelementptr inbounds %struct.branch, %struct.branch* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @release_tree_content_recursive(i32* %38)
  %40 = load %struct.branch*, %struct.branch** %3, align 8
  %41 = getelementptr inbounds %struct.branch, %struct.branch* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  store i32* null, i32** %42, align 8
  br label %43

43:                                               ; preds = %34, %11
  br label %47

44:                                               ; preds = %1
  %45 = load i8*, i8** %2, align 8
  %46 = call %struct.branch* @new_branch(i8* %45)
  store %struct.branch* %46, %struct.branch** %3, align 8
  br label %47

47:                                               ; preds = %44, %43
  %48 = call i32 (...) @read_next_command()
  %49 = load %struct.branch*, %struct.branch** %3, align 8
  %50 = call i32 @parse_from(%struct.branch* %49)
  %51 = load %struct.branch*, %struct.branch** %3, align 8
  %52 = getelementptr inbounds %struct.branch, %struct.branch* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %105

55:                                               ; preds = %47
  %56 = load %struct.branch*, %struct.branch** %3, align 8
  %57 = getelementptr inbounds %struct.branch, %struct.branch* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i64 @skip_prefix(i32 %58, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %4)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %105

61:                                               ; preds = %55
  store %struct.tag* null, %struct.tag** %6, align 8
  %62 = load %struct.tag*, %struct.tag** @first_tag, align 8
  store %struct.tag* %62, %struct.tag** %5, align 8
  br label %63

63:                                               ; preds = %76, %61
  %64 = load %struct.tag*, %struct.tag** %5, align 8
  %65 = icmp ne %struct.tag* %64, null
  br i1 %65, label %66, label %80

66:                                               ; preds = %63
  %67 = load %struct.tag*, %struct.tag** %5, align 8
  %68 = getelementptr inbounds %struct.tag, %struct.tag* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load i8*, i8** %4, align 8
  %71 = call i32 @strcmp(i32 %69, i8* %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %66
  br label %80

74:                                               ; preds = %66
  %75 = load %struct.tag*, %struct.tag** %5, align 8
  store %struct.tag* %75, %struct.tag** %6, align 8
  br label %76

76:                                               ; preds = %74
  %77 = load %struct.tag*, %struct.tag** %5, align 8
  %78 = getelementptr inbounds %struct.tag, %struct.tag* %77, i32 0, i32 0
  %79 = load %struct.tag*, %struct.tag** %78, align 8
  store %struct.tag* %79, %struct.tag** %5, align 8
  br label %63

80:                                               ; preds = %73, %63
  %81 = load %struct.tag*, %struct.tag** %5, align 8
  %82 = icmp ne %struct.tag* %81, null
  br i1 %82, label %83, label %104

83:                                               ; preds = %80
  %84 = load %struct.tag*, %struct.tag** %6, align 8
  %85 = icmp ne %struct.tag* %84, null
  br i1 %85, label %86, label %92

86:                                               ; preds = %83
  %87 = load %struct.tag*, %struct.tag** %5, align 8
  %88 = getelementptr inbounds %struct.tag, %struct.tag* %87, i32 0, i32 0
  %89 = load %struct.tag*, %struct.tag** %88, align 8
  %90 = load %struct.tag*, %struct.tag** %6, align 8
  %91 = getelementptr inbounds %struct.tag, %struct.tag* %90, i32 0, i32 0
  store %struct.tag* %89, %struct.tag** %91, align 8
  br label %96

92:                                               ; preds = %83
  %93 = load %struct.tag*, %struct.tag** %5, align 8
  %94 = getelementptr inbounds %struct.tag, %struct.tag* %93, i32 0, i32 0
  %95 = load %struct.tag*, %struct.tag** %94, align 8
  store %struct.tag* %95, %struct.tag** @first_tag, align 8
  br label %96

96:                                               ; preds = %92, %86
  %97 = load %struct.tag*, %struct.tag** %5, align 8
  %98 = getelementptr inbounds %struct.tag, %struct.tag* %97, i32 0, i32 0
  %99 = load %struct.tag*, %struct.tag** %98, align 8
  %100 = icmp ne %struct.tag* %99, null
  br i1 %100, label %103, label %101

101:                                              ; preds = %96
  %102 = load %struct.tag*, %struct.tag** %6, align 8
  store %struct.tag* %102, %struct.tag** @last_tag, align 8
  br label %103

103:                                              ; preds = %101, %96
  br label %104

104:                                              ; preds = %103, %80
  br label %105

105:                                              ; preds = %104, %55, %47
  %106 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @command_buf, i32 0, i32 0), align 8
  %107 = icmp sgt i64 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %105
  store i32 1, i32* @unread_command_buf, align 4
  br label %109

109:                                              ; preds = %108, %105
  ret void
}

declare dso_local %struct.branch* @lookup_branch(i8*) #1

declare dso_local i32 @oidclr(i32*) #1

declare dso_local i32 @release_tree_content_recursive(i32*) #1

declare dso_local %struct.branch* @new_branch(i8*) #1

declare dso_local i32 @read_next_command(...) #1

declare dso_local i32 @parse_from(%struct.branch*) #1

declare dso_local i64 @skip_prefix(i32, i8*, i8**) #1

declare dso_local i32 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
