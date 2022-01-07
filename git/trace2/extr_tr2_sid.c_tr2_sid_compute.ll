; ModuleID = '/home/carl/AnghaBench/git/trace2/extr_tr2_sid.c_tr2_sid_compute.c'
source_filename = "/home/carl/AnghaBench/git/trace2/extr_tr2_sid.c_tr2_sid_compute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64 }

@tr2sid_buf = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@TR2_ENVVAR_PARENT_SID = common dso_local global i32 0, align 4
@tr2sid_nr_git_parents = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @tr2_sid_compute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tr2_sid_compute() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @tr2sid_buf, i32 0, i32 1), align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  br label %45

6:                                                ; preds = %0
  %7 = load i32, i32* @TR2_ENVVAR_PARENT_SID, align 4
  %8 = call i8* @getenv(i32 %7)
  store i8* %8, i8** %1, align 8
  %9 = load i8*, i8** %1, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %40

11:                                               ; preds = %6
  %12 = load i8*, i8** %1, align 8
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %40

16:                                               ; preds = %11
  %17 = load i8*, i8** %1, align 8
  store i8* %17, i8** %2, align 8
  br label %18

18:                                               ; preds = %31, %16
  %19 = load i8*, i8** %2, align 8
  %20 = load i8, i8* %19, align 1
  %21 = icmp ne i8 %20, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %18
  %23 = load i8*, i8** %2, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 47
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i32, i32* @tr2sid_nr_git_parents, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* @tr2sid_nr_git_parents, align 4
  br label %30

30:                                               ; preds = %27, %22
  br label %31

31:                                               ; preds = %30
  %32 = load i8*, i8** %2, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %2, align 8
  br label %18

34:                                               ; preds = %18
  %35 = load i8*, i8** %1, align 8
  %36 = call i32 @strbuf_addstr(%struct.TYPE_4__* @tr2sid_buf, i8* %35)
  %37 = call i32 @strbuf_addch(%struct.TYPE_4__* @tr2sid_buf, i8 signext 47)
  %38 = load i32, i32* @tr2sid_nr_git_parents, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* @tr2sid_nr_git_parents, align 4
  br label %40

40:                                               ; preds = %34, %11, %6
  %41 = call i32 (...) @tr2_sid_append_my_sid_component()
  %42 = load i32, i32* @TR2_ENVVAR_PARENT_SID, align 4
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @tr2sid_buf, i32 0, i32 0), align 8
  %44 = call i32 @setenv(i32 %42, i32 %43, i32 1)
  br label %45

45:                                               ; preds = %40, %5
  ret void
}

declare dso_local i8* @getenv(i32) #1

declare dso_local i32 @strbuf_addstr(%struct.TYPE_4__*, i8*) #1

declare dso_local i32 @strbuf_addch(%struct.TYPE_4__*, i8 signext) #1

declare dso_local i32 @tr2_sid_append_my_sid_component(...) #1

declare dso_local i32 @setenv(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
