; ModuleID = '/home/carl/AnghaBench/git/extr_diff.c_emit_rewrite_lines.c'
source_filename = "/home/carl/AnghaBench/git/extr_diff.c_emit_rewrite_lines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emit_callback = type { i32, i32, i32 }

@DIFF_SYMBOL_NO_LF_EOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.emit_callback*, i32, i8*, i32)* @emit_rewrite_lines to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_rewrite_lines(%struct.emit_callback* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.emit_callback*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.emit_callback* %0, %struct.emit_callback** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  store i8* null, i8** %9, align 8
  br label %11

11:                                               ; preds = %53, %4
  %12 = load i32, i32* %8, align 4
  %13 = icmp slt i32 0, %12
  br i1 %13, label %14, label %61

14:                                               ; preds = %11
  %15 = load i8*, i8** %7, align 8
  %16 = load i32, i32* %8, align 4
  %17 = call i8* @memchr(i8* %15, i8 signext 10, i32 %16)
  store i8* %17, i8** %9, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %14
  %21 = load i8*, i8** %9, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = ptrtoint i8* %21 to i64
  %24 = ptrtoint i8* %22 to i64
  %25 = sub i64 %23, %24
  %26 = add nsw i64 %25, 1
  br label %30

27:                                               ; preds = %14
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  br label %30

30:                                               ; preds = %27, %20
  %31 = phi i64 [ %26, %20 ], [ %29, %27 ]
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 43
  br i1 %34, label %35, label %44

35:                                               ; preds = %30
  %36 = load %struct.emit_callback*, %struct.emit_callback** %5, align 8
  %37 = getelementptr inbounds %struct.emit_callback, %struct.emit_callback* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 4
  %40 = load %struct.emit_callback*, %struct.emit_callback** %5, align 8
  %41 = load i8*, i8** %7, align 8
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @emit_del_line(%struct.emit_callback* %40, i8* %41, i32 %42)
  br label %53

44:                                               ; preds = %30
  %45 = load %struct.emit_callback*, %struct.emit_callback** %5, align 8
  %46 = getelementptr inbounds %struct.emit_callback, %struct.emit_callback* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 4
  %49 = load %struct.emit_callback*, %struct.emit_callback** %5, align 8
  %50 = load i8*, i8** %7, align 8
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @emit_add_line(%struct.emit_callback* %49, i8* %50, i32 %51)
  br label %53

53:                                               ; preds = %44, %35
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* %8, align 4
  %56 = sub nsw i32 %55, %54
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %10, align 4
  %58 = load i8*, i8** %7, align 8
  %59 = sext i32 %57 to i64
  %60 = getelementptr inbounds i8, i8* %58, i64 %59
  store i8* %60, i8** %7, align 8
  br label %11

61:                                               ; preds = %11
  %62 = load i8*, i8** %9, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %70, label %64

64:                                               ; preds = %61
  %65 = load %struct.emit_callback*, %struct.emit_callback** %5, align 8
  %66 = getelementptr inbounds %struct.emit_callback, %struct.emit_callback* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @DIFF_SYMBOL_NO_LF_EOF, align 4
  %69 = call i32 @emit_diff_symbol(i32 %67, i32 %68, i32* null, i32 0, i32 0)
  br label %70

70:                                               ; preds = %64, %61
  ret void
}

declare dso_local i8* @memchr(i8*, i8 signext, i32) #1

declare dso_local i32 @emit_del_line(%struct.emit_callback*, i8*, i32) #1

declare dso_local i32 @emit_add_line(%struct.emit_callback*, i8*, i32) #1

declare dso_local i32 @emit_diff_symbol(i32, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
