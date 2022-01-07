; ModuleID = '/home/carl/AnghaBench/git/extr_path.c_do_git_common_path.c'
source_filename = "/home/carl/AnghaBench/git/extr_path.c_do_git_common_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { i32 }
%struct.strbuf = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.repository*, %struct.strbuf*, i8*, i32)* @do_git_common_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_git_common_path(%struct.repository* %0, %struct.strbuf* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.repository*, align 8
  %6 = alloca %struct.strbuf*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.repository* %0, %struct.repository** %5, align 8
  store %struct.strbuf* %1, %struct.strbuf** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %10 = load %struct.repository*, %struct.repository** %5, align 8
  %11 = getelementptr inbounds %struct.repository, %struct.repository* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @strbuf_addstr(%struct.strbuf* %9, i32 %12)
  %14 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %15 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %34

18:                                               ; preds = %4
  %19 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %20 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %23 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sub nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %21, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @is_dir_sep(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %18
  %32 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %33 = call i32 @strbuf_addch(%struct.strbuf* %32, i8 signext 47)
  br label %34

34:                                               ; preds = %31, %18, %4
  %35 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @strbuf_vaddf(%struct.strbuf* %35, i8* %36, i32 %37)
  %39 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %40 = call i32 @strbuf_cleanup_path(%struct.strbuf* %39)
  ret void
}

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i32) #1

declare dso_local i32 @is_dir_sep(i32) #1

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #1

declare dso_local i32 @strbuf_vaddf(%struct.strbuf*, i8*, i32) #1

declare dso_local i32 @strbuf_cleanup_path(%struct.strbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
