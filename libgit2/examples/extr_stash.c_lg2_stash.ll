; ModuleID = '/home/carl/AnghaBench/libgit2/examples/extr_stash.c_lg2_stash.c'
source_filename = "/home/carl/AnghaBench/libgit2/examples/extr_stash.c_lg2_stash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opts = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lg2_stash(i32* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca %struct.opts, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %9 = bitcast %struct.opts* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %9, i8 0, i64 8, i1 false)
  %10 = load i32, i32* %6, align 4
  %11 = load i8**, i8*** %7, align 8
  %12 = call i32 @parse_subcommand(%struct.opts* %8, i32 %10, i8** %11)
  %13 = getelementptr inbounds %struct.opts, %struct.opts* %8, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %27 [
    i32 131, label %15
    i32 130, label %18
    i32 128, label %21
    i32 129, label %24
  ]

15:                                               ; preds = %3
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @cmd_apply(i32* %16, %struct.opts* %8)
  store i32 %17, i32* %4, align 4
  br label %28

18:                                               ; preds = %3
  %19 = load i32*, i32** %5, align 8
  %20 = call i32 @cmd_list(i32* %19, %struct.opts* %8)
  store i32 %20, i32* %4, align 4
  br label %28

21:                                               ; preds = %3
  %22 = load i32*, i32** %5, align 8
  %23 = call i32 @cmd_push(i32* %22, %struct.opts* %8)
  store i32 %23, i32* %4, align 4
  br label %28

24:                                               ; preds = %3
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 @cmd_pop(i32* %25, %struct.opts* %8)
  store i32 %26, i32* %4, align 4
  br label %28

27:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %28

28:                                               ; preds = %27, %24, %21, %18, %15
  %29 = load i32, i32* %4, align 4
  ret i32 %29
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @parse_subcommand(%struct.opts*, i32, i8**) #2

declare dso_local i32 @cmd_apply(i32*, %struct.opts*) #2

declare dso_local i32 @cmd_list(i32*, %struct.opts*) #2

declare dso_local i32 @cmd_push(i32*, %struct.opts*) #2

declare dso_local i32 @cmd_pop(i32*, %struct.opts*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
