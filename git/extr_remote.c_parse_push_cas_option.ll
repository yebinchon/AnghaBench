; ModuleID = '/home/carl/AnghaBench/git/extr_remote.c_parse_push_cas_option.c'
source_filename = "/home/carl/AnghaBench/git/extr_remote.c_parse_push_cas_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.push_cas_option = type { i32 }
%struct.push_cas = type { i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"cannot parse expected object name '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.push_cas_option*, i8*, i32)* @parse_push_cas_option to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_push_cas_option(%struct.push_cas_option* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.push_cas_option*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.push_cas*, align 8
  store %struct.push_cas_option* %0, %struct.push_cas_option** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load %struct.push_cas_option*, %struct.push_cas_option** %5, align 8
  %14 = call i32 @clear_cas_option(%struct.push_cas_option* %13)
  store i32 0, i32* %4, align 4
  br label %63

15:                                               ; preds = %3
  %16 = load i8*, i8** %6, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = load %struct.push_cas_option*, %struct.push_cas_option** %5, align 8
  %20 = getelementptr inbounds %struct.push_cas_option, %struct.push_cas_option* %19, i32 0, i32 0
  store i32 1, i32* %20, align 4
  store i32 0, i32* %4, align 4
  br label %63

21:                                               ; preds = %15
  %22 = load i8*, i8** %6, align 8
  %23 = call i8* @strchrnul(i8* %22, i8 signext 58)
  store i8* %23, i8** %8, align 8
  %24 = load %struct.push_cas_option*, %struct.push_cas_option** %5, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = ptrtoint i8* %26 to i64
  %29 = ptrtoint i8* %27 to i64
  %30 = sub i64 %28, %29
  %31 = trunc i64 %30 to i32
  %32 = call %struct.push_cas* @add_cas_entry(%struct.push_cas_option* %24, i8* %25, i32 %31)
  store %struct.push_cas* %32, %struct.push_cas** %9, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = load i8, i8* %33, align 1
  %35 = icmp ne i8 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %21
  %37 = load %struct.push_cas*, %struct.push_cas** %9, align 8
  %38 = getelementptr inbounds %struct.push_cas, %struct.push_cas* %37, i32 0, i32 0
  store i32 1, i32* %38, align 4
  br label %62

39:                                               ; preds = %21
  %40 = load i8*, i8** %8, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 1
  %42 = load i8, i8* %41, align 1
  %43 = icmp ne i8 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %39
  %45 = load %struct.push_cas*, %struct.push_cas** %9, align 8
  %46 = getelementptr inbounds %struct.push_cas, %struct.push_cas* %45, i32 0, i32 1
  %47 = call i32 @oidclr(i32* %46)
  br label %61

48:                                               ; preds = %39
  %49 = load i8*, i8** %8, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 1
  %51 = load %struct.push_cas*, %struct.push_cas** %9, align 8
  %52 = getelementptr inbounds %struct.push_cas, %struct.push_cas* %51, i32 0, i32 1
  %53 = call i64 @get_oid(i8* %50, i32* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %48
  %56 = call i32 @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %57 = load i8*, i8** %8, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 1
  %59 = call i32 @error(i32 %56, i8* %58)
  store i32 %59, i32* %4, align 4
  br label %63

60:                                               ; preds = %48
  br label %61

61:                                               ; preds = %60, %44
  br label %62

62:                                               ; preds = %61, %36
  store i32 0, i32* %4, align 4
  br label %63

63:                                               ; preds = %62, %55, %18, %12
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i32 @clear_cas_option(%struct.push_cas_option*) #1

declare dso_local i8* @strchrnul(i8*, i8 signext) #1

declare dso_local %struct.push_cas* @add_cas_entry(%struct.push_cas_option*, i8*, i32) #1

declare dso_local i32 @oidclr(i32*) #1

declare dso_local i64 @get_oid(i8*, i32*) #1

declare dso_local i32 @error(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
