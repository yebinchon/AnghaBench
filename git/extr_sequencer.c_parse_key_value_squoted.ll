; ModuleID = '/home/carl/AnghaBench/git/extr_sequencer.c_parse_key_value_squoted.c'
source_filename = "/home/carl/AnghaBench/git/extr_sequencer.c_parse_key_value_squoted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list = type { i32 }
%struct.string_list_item = type { i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"no key present in '%.*s'\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"unable to dequote value of '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.string_list*)* @parse_key_value_squoted to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_key_value_squoted(i8* %0, %struct.string_list* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.string_list*, align 8
  %6 = alloca %struct.string_list_item*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.string_list* %1, %struct.string_list** %5, align 8
  br label %9

9:                                                ; preds = %57, %2
  %10 = load i8*, i8** %4, align 8
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  br i1 %12, label %13, label %62

13:                                               ; preds = %9
  %14 = load i8*, i8** %4, align 8
  %15 = call i8* @strchr(i8* %14, i8 signext 61)
  store i8* %15, i8** %8, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %30, label %18

18:                                               ; preds = %13
  %19 = load i8*, i8** %4, align 8
  %20 = call i8* @strchrnul(i8* %19, i8 signext 10)
  store i8* %20, i8** %7, align 8
  %21 = call i32 @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %22 = load i8*, i8** %7, align 8
  %23 = load i8*, i8** %4, align 8
  %24 = ptrtoint i8* %22 to i64
  %25 = ptrtoint i8* %23 to i64
  %26 = sub i64 %24, %25
  %27 = trunc i64 %26 to i32
  %28 = load i8*, i8** %4, align 8
  %29 = call i32 (i32, i32, ...) @error(i32 %21, i32 %27, i8* %28)
  store i32 %29, i32* %3, align 4
  br label %63

30:                                               ; preds = %13
  %31 = load i8*, i8** %8, align 8
  %32 = call i8* @strchrnul(i8* %31, i8 signext 10)
  store i8* %32, i8** %7, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %8, align 8
  store i8 0, i8* %33, align 1
  %35 = load %struct.string_list*, %struct.string_list** %5, align 8
  %36 = load i8*, i8** %4, align 8
  %37 = call %struct.string_list_item* @string_list_append(%struct.string_list* %35, i8* %36)
  store %struct.string_list_item* %37, %struct.string_list_item** %6, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = load i8*, i8** %7, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 10
  %43 = zext i1 %42 to i32
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %38, i64 %44
  store i8* %45, i8** %4, align 8
  %46 = load i8*, i8** %7, align 8
  store i8 0, i8* %46, align 1
  %47 = load i8*, i8** %8, align 8
  %48 = call i8* @sq_dequote(i8* %47)
  store i8* %48, i8** %8, align 8
  %49 = load i8*, i8** %8, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %57, label %51

51:                                               ; preds = %30
  %52 = call i32 @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %53 = load %struct.string_list_item*, %struct.string_list_item** %6, align 8
  %54 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 (i32, i32, ...) @error(i32 %52, i32 %55)
  store i32 %56, i32* %3, align 4
  br label %63

57:                                               ; preds = %30
  %58 = load i8*, i8** %8, align 8
  %59 = call i32 @xstrdup(i8* %58)
  %60 = load %struct.string_list_item*, %struct.string_list_item** %6, align 8
  %61 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 4
  br label %9

62:                                               ; preds = %9
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %62, %51, %18
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @strchrnul(i8*, i8 signext) #1

declare dso_local i32 @error(i32, i32, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local %struct.string_list_item* @string_list_append(%struct.string_list*, i8*) #1

declare dso_local i8* @sq_dequote(i8*) #1

declare dso_local i32 @xstrdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
