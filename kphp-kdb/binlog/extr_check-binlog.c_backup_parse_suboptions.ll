; ModuleID = '/home/carl/AnghaBench/kphp-kdb/binlog/extr_check-binlog.c_backup_parse_suboptions.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/binlog/extr_check-binlog.c_backup_parse_suboptions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i8*, i32, i8*, i8* }

@backups_suboptions = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [53 x i8] c"Backup suboptions wasn't specified (use -B switch).\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@BACKUP_ALL_SUBOPTIONS = common dso_local global i8* null, align 8
@backups_features = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@ll_error = common dso_local global i8* null, align 8
@ll_warning = common dso_local global i8* null, align 8
@bc_full = common dso_local global i32 0, align 4
@bc_partial = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Unimplemented suboption: '%c'\0A\00", align 1
@.str.3 = private unnamed_addr constant [107 x i8] c"Backup suboptions should contain exactly one option from the list ['f', 'F', 'p', 'P'] or equal to 'all'.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @backup_parse_suboptions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @backup_parse_suboptions() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = load i8*, i8** @backups_suboptions, align 8
  %5 = icmp eq i8* %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %91

8:                                                ; preds = %0
  %9 = load i8*, i8** @backups_suboptions, align 8
  %10 = call i32 @strcmp(i8* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = load i8*, i8** @BACKUP_ALL_SUBOPTIONS, align 8
  store i8* %13, i8** @backups_suboptions, align 8
  br label %14

14:                                               ; preds = %12, %8
  store i32 0, i32* %3, align 4
  %15 = load i8*, i8** @backups_suboptions, align 8
  store i8* %15, i8** %2, align 8
  br label %16

16:                                               ; preds = %82, %14
  %17 = load i8*, i8** %2, align 8
  %18 = load i8, i8* %17, align 1
  %19 = icmp ne i8 %18, 0
  br i1 %19, label %20, label %85

20:                                               ; preds = %16
  %21 = load i8*, i8** %2, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  switch i32 %23, label %76 [
    i32 100, label %24
    i32 114, label %25
    i32 76, label %26
    i32 108, label %26
    i32 77, label %37
    i32 109, label %37
    i32 70, label %48
    i32 102, label %48
    i32 112, label %62
    i32 80, label %62
  ]

24:                                               ; preds = %20
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @backups_features, i32 0, i32 0), align 8
  br label %81

25:                                               ; preds = %20
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @backups_features, i32 0, i32 1), align 4
  br label %81

26:                                               ; preds = %20, %20
  %27 = load i8*, i8** %2, align 8
  %28 = load i8, i8* %27, align 1
  %29 = call i32 @isupper(i8 signext %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i8*, i8** @ll_error, align 8
  br label %35

33:                                               ; preds = %26
  %34 = load i8*, i8** @ll_warning, align 8
  br label %35

35:                                               ; preds = %33, %31
  %36 = phi i8* [ %32, %31 ], [ %34, %33 ]
  store i8* %36, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @backups_features, i32 0, i32 5), align 8
  br label %81

37:                                               ; preds = %20, %20
  %38 = load i8*, i8** %2, align 8
  %39 = load i8, i8* %38, align 1
  %40 = call i32 @isupper(i8 signext %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load i8*, i8** @ll_error, align 8
  br label %46

44:                                               ; preds = %37
  %45 = load i8*, i8** @ll_warning, align 8
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi i8* [ %43, %42 ], [ %45, %44 ]
  store i8* %47, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @backups_features, i32 0, i32 4), align 8
  br label %81

48:                                               ; preds = %20, %20
  %49 = load i32, i32* %3, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %3, align 4
  %51 = load i32, i32* @bc_full, align 4
  store i32 %51, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @backups_features, i32 0, i32 3), align 8
  %52 = load i8*, i8** %2, align 8
  %53 = load i8, i8* %52, align 1
  %54 = call i32 @isupper(i8 signext %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %48
  %57 = load i8*, i8** @ll_error, align 8
  br label %60

58:                                               ; preds = %48
  %59 = load i8*, i8** @ll_warning, align 8
  br label %60

60:                                               ; preds = %58, %56
  %61 = phi i8* [ %57, %56 ], [ %59, %58 ]
  store i8* %61, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @backups_features, i32 0, i32 2), align 8
  br label %81

62:                                               ; preds = %20, %20
  %63 = load i32, i32* %3, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %3, align 4
  %65 = load i32, i32* @bc_partial, align 4
  store i32 %65, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @backups_features, i32 0, i32 3), align 8
  %66 = load i8*, i8** %2, align 8
  %67 = load i8, i8* %66, align 1
  %68 = call i32 @isupper(i8 signext %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %62
  %71 = load i8*, i8** @ll_error, align 8
  br label %74

72:                                               ; preds = %62
  %73 = load i8*, i8** @ll_warning, align 8
  br label %74

74:                                               ; preds = %72, %70
  %75 = phi i8* [ %71, %70 ], [ %73, %72 ]
  store i8* %75, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @backups_features, i32 0, i32 2), align 8
  br label %81

76:                                               ; preds = %20
  %77 = load i8*, i8** %2, align 8
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %79)
  store i32 -1, i32* %1, align 4
  br label %91

81:                                               ; preds = %74, %60, %46, %35, %25, %24
  br label %82

82:                                               ; preds = %81
  %83 = load i8*, i8** %2, align 8
  %84 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %84, i8** %2, align 8
  br label %16

85:                                               ; preds = %16
  %86 = load i32, i32* %3, align 4
  %87 = icmp ne i32 %86, 1
  br i1 %87, label %88, label %90

88:                                               ; preds = %85
  %89 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %91

90:                                               ; preds = %85
  store i32 0, i32* %1, align 4
  br label %91

91:                                               ; preds = %90, %88, %76, %6
  %92 = load i32, i32* %1, align 4
  ret i32 %92
}

declare dso_local i32 @kprintf(i8*, ...) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @isupper(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
