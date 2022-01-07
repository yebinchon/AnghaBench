; ModuleID = '/home/carl/AnghaBench/git/extr_pretty.c_format_reflog_person.c'
source_filename = "/home/carl/AnghaBench/git/extr_pretty.c_format_reflog_person.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.reflog_walk_info = type { i32 }
%struct.date_mode = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.strbuf*, i8, %struct.reflog_walk_info*, %struct.date_mode*)* @format_reflog_person to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @format_reflog_person(%struct.strbuf* %0, i8 signext %1, %struct.reflog_walk_info* %2, %struct.date_mode* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.strbuf*, align 8
  %7 = alloca i8, align 1
  %8 = alloca %struct.reflog_walk_info*, align 8
  %9 = alloca %struct.date_mode*, align 8
  %10 = alloca i8*, align 8
  store %struct.strbuf* %0, %struct.strbuf** %6, align 8
  store i8 %1, i8* %7, align 1
  store %struct.reflog_walk_info* %2, %struct.reflog_walk_info** %8, align 8
  store %struct.date_mode* %3, %struct.date_mode** %9, align 8
  %11 = load %struct.reflog_walk_info*, %struct.reflog_walk_info** %8, align 8
  %12 = icmp ne %struct.reflog_walk_info* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %4
  store i32 2, i32* %5, align 4
  br label %28

14:                                               ; preds = %4
  %15 = load %struct.reflog_walk_info*, %struct.reflog_walk_info** %8, align 8
  %16 = call i8* @get_reflog_ident(%struct.reflog_walk_info* %15)
  store i8* %16, i8** %10, align 8
  %17 = load i8*, i8** %10, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  store i32 2, i32* %5, align 4
  br label %28

20:                                               ; preds = %14
  %21 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %22 = load i8, i8* %7, align 1
  %23 = load i8*, i8** %10, align 8
  %24 = load i8*, i8** %10, align 8
  %25 = call i32 @strlen(i8* %24)
  %26 = load %struct.date_mode*, %struct.date_mode** %9, align 8
  %27 = call i32 @format_person_part(%struct.strbuf* %21, i8 signext %22, i8* %23, i32 %25, %struct.date_mode* %26)
  store i32 %27, i32* %5, align 4
  br label %28

28:                                               ; preds = %20, %19, %13
  %29 = load i32, i32* %5, align 4
  ret i32 %29
}

declare dso_local i8* @get_reflog_ident(%struct.reflog_walk_info*) #1

declare dso_local i32 @format_person_part(%struct.strbuf*, i8 signext, i8*, i32, %struct.date_mode*) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
