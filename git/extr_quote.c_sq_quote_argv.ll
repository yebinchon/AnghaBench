; ModuleID = '/home/carl/AnghaBench/git/extr_quote.c_sq_quote_argv.c'
source_filename = "/home/carl/AnghaBench/git/extr_quote.c_sq_quote_argv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sq_quote_argv(%struct.strbuf* %0, i8** %1) #0 {
  %3 = alloca %struct.strbuf*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  store %struct.strbuf* %0, %struct.strbuf** %3, align 8
  store i8** %1, i8*** %4, align 8
  %6 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %7 = call i32 @strbuf_grow(%struct.strbuf* %6, i32 255)
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %25, %2
  %9 = load i8**, i8*** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i8*, i8** %9, i64 %11
  %13 = load i8*, i8** %12, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %28

15:                                               ; preds = %8
  %16 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %17 = call i32 @strbuf_addch(%struct.strbuf* %16, i8 signext 32)
  %18 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %19 = load i8**, i8*** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8*, i8** %19, i64 %21
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 @sq_quote_buf(%struct.strbuf* %18, i8* %23)
  br label %25

25:                                               ; preds = %15
  %26 = load i32, i32* %5, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %5, align 4
  br label %8

28:                                               ; preds = %8
  ret void
}

declare dso_local i32 @strbuf_grow(%struct.strbuf*, i32) #1

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #1

declare dso_local i32 @sq_quote_buf(%struct.strbuf*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
