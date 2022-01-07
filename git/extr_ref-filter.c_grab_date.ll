; ModuleID = '/home/carl/AnghaBench/git/extr_ref-filter.c_grab_date.c'
source_filename = "/home/carl/AnghaBench/git/extr_ref-filter.c_grab_date.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atom_value = type { i64, i8* }
%struct.date_mode = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"> \00", align 1
@DATE_NORMAL = common dso_local global i32 0, align 4
@TIME_MAX = common dso_local global i64 0, align 8
@LONG_MIN = common dso_local global i64 0, align 8
@LONG_MAX = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.atom_value*, i8*)* @grab_date to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @grab_date(i8* %0, %struct.atom_value* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.atom_value*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.date_mode, align 4
  %12 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.atom_value* %1, %struct.atom_value** %5, align 8
  store i8* %2, i8** %6, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = call i8* @strstr(i8* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i8* %14, i8** %7, align 8
  %15 = getelementptr inbounds %struct.date_mode, %struct.date_mode* %11, i32 0, i32 0
  %16 = load i32, i32* @DATE_NORMAL, align 4
  store i32 %16, i32* %15, align 4
  %17 = load i8*, i8** %6, align 8
  %18 = call i8* @strchr(i8* %17, i8 signext 58)
  store i8* %18, i8** %12, align 8
  %19 = load i8*, i8** %12, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %3
  %22 = load i8*, i8** %12, align 8
  %23 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %23, i8** %12, align 8
  %24 = load i8*, i8** %12, align 8
  %25 = call i32 @parse_date_format(i8* %24, %struct.date_mode* %11)
  br label %26

26:                                               ; preds = %21, %3
  %27 = load i8*, i8** %7, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  br label %63

30:                                               ; preds = %26
  %31 = load i8*, i8** %7, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 2
  %33 = call i64 @parse_timestamp(i8* %32, i8** %8, i32 10)
  store i64 %33, i64* %9, align 8
  %34 = load i64, i64* %9, align 8
  %35 = load i64, i64* @TIME_MAX, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  br label %63

38:                                               ; preds = %30
  %39 = load i8*, i8** %8, align 8
  %40 = call i64 @strtol(i8* %39, i32* null, i32 10)
  store i64 %40, i64* %10, align 8
  %41 = load i64, i64* %10, align 8
  %42 = load i64, i64* @LONG_MIN, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %48, label %44

44:                                               ; preds = %38
  %45 = load i64, i64* %10, align 8
  %46 = load i64, i64* @LONG_MAX, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %44, %38
  %49 = load i64, i64* @errno, align 8
  %50 = load i64, i64* @ERANGE, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  br label %63

53:                                               ; preds = %48, %44
  %54 = load i64, i64* %9, align 8
  %55 = load i64, i64* %10, align 8
  %56 = call i8* @show_date(i64 %54, i64 %55, %struct.date_mode* %11)
  %57 = call i8* @xstrdup(i8* %56)
  %58 = load %struct.atom_value*, %struct.atom_value** %5, align 8
  %59 = getelementptr inbounds %struct.atom_value, %struct.atom_value* %58, i32 0, i32 1
  store i8* %57, i8** %59, align 8
  %60 = load i64, i64* %9, align 8
  %61 = load %struct.atom_value*, %struct.atom_value** %5, align 8
  %62 = getelementptr inbounds %struct.atom_value, %struct.atom_value* %61, i32 0, i32 0
  store i64 %60, i64* %62, align 8
  br label %69

63:                                               ; preds = %52, %37, %29
  %64 = call i8* @xstrdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %65 = load %struct.atom_value*, %struct.atom_value** %5, align 8
  %66 = getelementptr inbounds %struct.atom_value, %struct.atom_value* %65, i32 0, i32 1
  store i8* %64, i8** %66, align 8
  %67 = load %struct.atom_value*, %struct.atom_value** %5, align 8
  %68 = getelementptr inbounds %struct.atom_value, %struct.atom_value* %67, i32 0, i32 0
  store i64 0, i64* %68, align 8
  br label %69

69:                                               ; preds = %63, %53
  ret void
}

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @parse_date_format(i8*, %struct.date_mode*) #1

declare dso_local i64 @parse_timestamp(i8*, i8**, i32) #1

declare dso_local i64 @strtol(i8*, i32*, i32) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i8* @show_date(i64, i64, %struct.date_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
