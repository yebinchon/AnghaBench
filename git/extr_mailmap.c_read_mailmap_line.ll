; ModuleID = '/home/carl/AnghaBench/git/extr_mailmap.c_read_mailmap_line.c'
source_filename = "/home/carl/AnghaBench/git/extr_mailmap.c_read_mailmap_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list = type { i32 }

@read_mailmap_line.abbrev = internal constant [15 x i8] c"# repo-abbrev:\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.string_list*, i8*, i8**)* @read_mailmap_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_mailmap_line(%struct.string_list* %0, i8* %1, i8** %2) #0 {
  %4 = alloca %struct.string_list*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store %struct.string_list* %0, %struct.string_list** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8** %2, i8*** %6, align 8
  store i8* null, i8** %7, align 8
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 0
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 35
  br i1 %18, label %19, label %70

19:                                               ; preds = %3
  store i32 14, i32* %11, align 4
  %20 = load i8*, i8** %5, align 8
  %21 = call i32 @strlen(i8* %20)
  store i32 %21, i32* %12, align 4
  %22 = load i8**, i8*** %6, align 8
  %23 = icmp ne i8** %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  br label %87

25:                                               ; preds = %19
  %26 = load i32, i32* %12, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %43

28:                                               ; preds = %25
  %29 = load i8*, i8** %5, align 8
  %30 = load i32, i32* %12, align 4
  %31 = sub nsw i32 %30, 1
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %29, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 10
  br i1 %36, label %37, label %43

37:                                               ; preds = %28
  %38 = load i8*, i8** %5, align 8
  %39 = load i32, i32* %12, align 4
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* %12, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %38, i64 %41
  store i8 0, i8* %42, align 1
  br label %43

43:                                               ; preds = %37, %28, %25
  %44 = load i8*, i8** %5, align 8
  %45 = load i32, i32* %11, align 4
  %46 = call i32 @strncmp(i8* %44, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @read_mailmap_line.abbrev, i64 0, i64 0), i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %69, label %48

48:                                               ; preds = %43
  %49 = load i8**, i8*** %6, align 8
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 @free(i8* %50)
  %52 = load i8*, i8** %5, align 8
  %53 = load i32, i32* %11, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %52, i64 %54
  store i8* %55, i8** %13, align 8
  br label %56

56:                                               ; preds = %62, %48
  %57 = load i8*, i8** %13, align 8
  %58 = load i8, i8* %57, align 1
  %59 = call i64 @isspace(i8 signext %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %56
  br label %62

62:                                               ; preds = %61
  %63 = load i8*, i8** %13, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %13, align 8
  br label %56

65:                                               ; preds = %56
  %66 = load i8*, i8** %13, align 8
  %67 = call i8* @xstrdup(i8* %66)
  %68 = load i8**, i8*** %6, align 8
  store i8* %67, i8** %68, align 8
  br label %69

69:                                               ; preds = %65, %43
  br label %87

70:                                               ; preds = %3
  %71 = load i8*, i8** %5, align 8
  %72 = call i8* @parse_name_and_email(i8* %71, i8** %7, i8** %8, i32 0)
  store i8* %72, i8** %9, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %74, label %77

74:                                               ; preds = %70
  %75 = load i8*, i8** %9, align 8
  %76 = call i8* @parse_name_and_email(i8* %75, i8** %9, i8** %10, i32 1)
  br label %77

77:                                               ; preds = %74, %70
  %78 = load i8*, i8** %8, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %80, label %87

80:                                               ; preds = %77
  %81 = load %struct.string_list*, %struct.string_list** %4, align 8
  %82 = load i8*, i8** %7, align 8
  %83 = load i8*, i8** %8, align 8
  %84 = load i8*, i8** %9, align 8
  %85 = load i8*, i8** %10, align 8
  %86 = call i32 @add_mapping(%struct.string_list* %81, i8* %82, i8* %83, i8* %84, i8* %85)
  br label %87

87:                                               ; preds = %24, %69, %80, %77
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i8* @parse_name_and_email(i8*, i8**, i8**, i32) #1

declare dso_local i32 @add_mapping(%struct.string_list*, i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
