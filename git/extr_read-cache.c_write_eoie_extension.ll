; ModuleID = '/home/carl/AnghaBench/git/extr_read-cache.c_write_eoie_extension.c'
source_filename = "/home/carl/AnghaBench/git/extr_read-cache.c_write_eoie_extension.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 (i8*, i32*)* }
%struct.strbuf = type { i32 }

@GIT_MAX_RAWSZ = common dso_local global i32 0, align 4
@the_hash_algo = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.strbuf*, i32*, i64)* @write_eoie_extension to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_eoie_extension(%struct.strbuf* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.strbuf*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store %struct.strbuf* %0, %struct.strbuf** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load i32, i32* @GIT_MAX_RAWSZ, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %8, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %9, align 8
  %14 = load i64, i64* %6, align 8
  %15 = call i32 @put_be32(i8* %7, i64 %14)
  %16 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %17 = call i32 @strbuf_add(%struct.strbuf* %16, i8* %7, i32 1)
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_hash_algo, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32 (i8*, i32*)*, i32 (i8*, i32*)** %19, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = call i32 %20(i8* %13, i32* %21)
  %23 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_hash_algo, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @strbuf_add(%struct.strbuf* %23, i8* %13, i32 %26)
  %28 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %28)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @put_be32(i8*, i64) #2

declare dso_local i32 @strbuf_add(%struct.strbuf*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
