; ModuleID = '/home/carl/AnghaBench/git/extr_mailinfo.c_handle_header.c'
source_filename = "/home/carl/AnghaBench/git/extr_mailinfo.c_handle_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.strbuf**, %struct.strbuf*)* @handle_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_header(%struct.strbuf** %0, %struct.strbuf* %1) #0 {
  %3 = alloca %struct.strbuf**, align 8
  %4 = alloca %struct.strbuf*, align 8
  store %struct.strbuf** %0, %struct.strbuf*** %3, align 8
  store %struct.strbuf* %1, %struct.strbuf** %4, align 8
  %5 = load %struct.strbuf**, %struct.strbuf*** %3, align 8
  %6 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %7 = icmp ne %struct.strbuf* %6, null
  br i1 %7, label %17, label %8

8:                                                ; preds = %2
  %9 = call %struct.strbuf* @xmalloc(i32 4)
  %10 = load %struct.strbuf**, %struct.strbuf*** %3, align 8
  store %struct.strbuf* %9, %struct.strbuf** %10, align 8
  %11 = load %struct.strbuf**, %struct.strbuf*** %3, align 8
  %12 = load %struct.strbuf*, %struct.strbuf** %11, align 8
  %13 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %14 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @strbuf_init(%struct.strbuf* %12, i32 %15)
  br label %21

17:                                               ; preds = %2
  %18 = load %struct.strbuf**, %struct.strbuf*** %3, align 8
  %19 = load %struct.strbuf*, %struct.strbuf** %18, align 8
  %20 = call i32 @strbuf_reset(%struct.strbuf* %19)
  br label %21

21:                                               ; preds = %17, %8
  %22 = load %struct.strbuf**, %struct.strbuf*** %3, align 8
  %23 = load %struct.strbuf*, %struct.strbuf** %22, align 8
  %24 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %25 = call i32 @strbuf_addbuf(%struct.strbuf* %23, %struct.strbuf* %24)
  ret void
}

declare dso_local %struct.strbuf* @xmalloc(i32) #1

declare dso_local i32 @strbuf_init(%struct.strbuf*, i32) #1

declare dso_local i32 @strbuf_reset(%struct.strbuf*) #1

declare dso_local i32 @strbuf_addbuf(%struct.strbuf*, %struct.strbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
