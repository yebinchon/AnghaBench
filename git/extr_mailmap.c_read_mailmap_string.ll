; ModuleID = '/home/carl/AnghaBench/git/extr_mailmap.c_read_mailmap_string.c'
source_filename = "/home/carl/AnghaBench/git/extr_mailmap.c_read_mailmap_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.string_list*, i8*, i8**)* @read_mailmap_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_mailmap_string(%struct.string_list* %0, i8* %1, i8** %2) #0 {
  %4 = alloca %struct.string_list*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  store %struct.string_list* %0, %struct.string_list** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8** %2, i8*** %6, align 8
  br label %8

8:                                                ; preds = %21, %3
  %9 = load i8*, i8** %5, align 8
  %10 = load i8, i8* %9, align 1
  %11 = icmp ne i8 %10, 0
  br i1 %11, label %12, label %27

12:                                               ; preds = %8
  %13 = load i8*, i8** %5, align 8
  %14 = call i8* @strchrnul(i8* %13, i8 signext 10)
  store i8* %14, i8** %7, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = load i8, i8* %15, align 1
  %17 = icmp ne i8 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %12
  %19 = load i8*, i8** %7, align 8
  %20 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %20, i8** %7, align 8
  store i8 0, i8* %19, align 1
  br label %21

21:                                               ; preds = %18, %12
  %22 = load %struct.string_list*, %struct.string_list** %4, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = load i8**, i8*** %6, align 8
  %25 = call i32 @read_mailmap_line(%struct.string_list* %22, i8* %23, i8** %24)
  %26 = load i8*, i8** %7, align 8
  store i8* %26, i8** %5, align 8
  br label %8

27:                                               ; preds = %8
  ret void
}

declare dso_local i8* @strchrnul(i8*, i8 signext) #1

declare dso_local i32 @read_mailmap_line(%struct.string_list*, i8*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
