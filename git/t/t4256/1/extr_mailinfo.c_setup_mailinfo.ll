; ModuleID = '/home/carl/AnghaBench/git/t/t4256/1/extr_mailinfo.c_setup_mailinfo.c'
source_filename = "/home/carl/AnghaBench/git/t/t4256/1/extr_mailinfo.c_setup_mailinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mailinfo = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@git_mailinfo_config = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @setup_mailinfo(%struct.mailinfo* %0) #0 {
  %2 = alloca %struct.mailinfo*, align 8
  store %struct.mailinfo* %0, %struct.mailinfo** %2, align 8
  %3 = load %struct.mailinfo*, %struct.mailinfo** %2, align 8
  %4 = call i32 @memset(%struct.mailinfo* %3, i32 0, i32 36)
  %5 = load %struct.mailinfo*, %struct.mailinfo** %2, align 8
  %6 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %5, i32 0, i32 8
  %7 = call i32 @strbuf_init(i32* %6, i32 0)
  %8 = load %struct.mailinfo*, %struct.mailinfo** %2, align 8
  %9 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %8, i32 0, i32 7
  %10 = call i32 @strbuf_init(i32* %9, i32 0)
  %11 = load %struct.mailinfo*, %struct.mailinfo** %2, align 8
  %12 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %11, i32 0, i32 6
  %13 = call i32 @strbuf_init(i32* %12, i32 0)
  %14 = load %struct.mailinfo*, %struct.mailinfo** %2, align 8
  %15 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %14, i32 0, i32 5
  %16 = call i32 @strbuf_init(i32* %15, i32 0)
  %17 = load %struct.mailinfo*, %struct.mailinfo** %2, align 8
  %18 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %17, i32 0, i32 4
  %19 = call i32 @strbuf_init(i32* %18, i32 0)
  %20 = load %struct.mailinfo*, %struct.mailinfo** %2, align 8
  %21 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %20, i32 0, i32 0
  store i32 1, i32* %21, align 4
  %22 = load %struct.mailinfo*, %struct.mailinfo** %2, align 8
  %23 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %22, i32 0, i32 1
  store i32 1, i32* %23, align 4
  %24 = load %struct.mailinfo*, %struct.mailinfo** %2, align 8
  %25 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.mailinfo*, %struct.mailinfo** %2, align 8
  %28 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* @git_mailinfo_config, align 4
  %30 = load %struct.mailinfo*, %struct.mailinfo** %2, align 8
  %31 = call i32 @git_config(i32 %29, %struct.mailinfo* %30)
  ret void
}

declare dso_local i32 @memset(%struct.mailinfo*, i32, i32) #1

declare dso_local i32 @strbuf_init(i32*, i32) #1

declare dso_local i32 @git_config(i32, %struct.mailinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
