; ModuleID = '/home/carl/AnghaBench/git/extr_help.c_print_command_list.c'
source_filename = "/home/carl/AnghaBench/git/extr_help.c_print_command_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmdname_help = type { i8*, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"   %s   \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cmdname_help*, i32, i32)* @print_command_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_command_list(%struct.cmdname_help* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.cmdname_help*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.cmdname_help* %0, %struct.cmdname_help** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %63, %3
  %10 = load %struct.cmdname_help*, %struct.cmdname_help** %4, align 8
  %11 = load i32, i32* %7, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.cmdname_help, %struct.cmdname_help* %10, i64 %12
  %14 = getelementptr inbounds %struct.cmdname_help, %struct.cmdname_help* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %66

17:                                               ; preds = %9
  %18 = load %struct.cmdname_help*, %struct.cmdname_help** %4, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.cmdname_help, %struct.cmdname_help* %18, i64 %20
  %22 = getelementptr inbounds %struct.cmdname_help, %struct.cmdname_help* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %62

27:                                               ; preds = %17
  %28 = load %struct.cmdname_help*, %struct.cmdname_help** %4, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.cmdname_help, %struct.cmdname_help* %28, i64 %30
  %32 = getelementptr inbounds %struct.cmdname_help, %struct.cmdname_help* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = call i64 @strlen(i8* %33)
  store i64 %34, i64* %8, align 8
  %35 = load %struct.cmdname_help*, %struct.cmdname_help** %4, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.cmdname_help, %struct.cmdname_help* %35, i64 %37
  %39 = getelementptr inbounds %struct.cmdname_help, %struct.cmdname_help* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %40)
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = load i64, i64* %8, align 8
  %45 = icmp ugt i64 %43, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %27
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = load i64, i64* %8, align 8
  %50 = sub i64 %48, %49
  %51 = trunc i64 %50 to i32
  %52 = call i32 @mput_char(i8 signext 32, i32 %51)
  br label %53

53:                                               ; preds = %46, %27
  %54 = load %struct.cmdname_help*, %struct.cmdname_help** %4, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.cmdname_help, %struct.cmdname_help* %54, i64 %56
  %58 = getelementptr inbounds %struct.cmdname_help, %struct.cmdname_help* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @_(i32 %59)
  %61 = call i32 @puts(i32 %60)
  br label %62

62:                                               ; preds = %53, %17
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %7, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %7, align 4
  br label %9

66:                                               ; preds = %9
  ret void
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @mput_char(i8 signext, i32) #1

declare dso_local i32 @puts(i32) #1

declare dso_local i32 @_(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
