; ModuleID = '/home/carl/AnghaBench/libgit2/deps/ntlmclient/extr_ntlm.c_ntlm_client_reset.c'
source_filename = "/home/carl/AnghaBench/libgit2/deps/ntlmclient/extr_ntlm.c_ntlm_client_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32*, i32*, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ntlm_client_reset(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %6 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %7 = call i32 @assert(%struct.TYPE_12__* %6)
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 11
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @free(i32 %11)
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 10
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @free(i32 %16)
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 10
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @free(i32 %21)
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 10
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @free(i32 %26)
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 10
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @free(i32 %31)
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 10
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @free(i32 %36)
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 10
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @free(i32 %41)
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 9
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @free(i32 %46)
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 8
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @free(i32 %50)
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 7
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @free(i32 %54)
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 6
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @free(i32 %58)
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @free(i32 %62)
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @free(i32 %66)
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @free(i32 %70)
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %73 = call i32 @free_credentials(%struct.TYPE_12__* %72)
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  store i32 %76, i32* %3, align 4
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  store i32* %79, i32** %4, align 8
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  store i32* %82, i32** %5, align 8
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %84 = call i32 @memset(%struct.TYPE_12__* %83, i32 0, i32 4)
  %85 = load i32, i32* %3, align 4
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 2
  store i32 %85, i32* %87, align 8
  %88 = load i32*, i32** %4, align 8
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 1
  store i32* %88, i32** %90, align 8
  %91 = load i32*, i32** %5, align 8
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 0
  store i32* %91, i32** %93, align 8
  ret void
}

declare dso_local i32 @assert(%struct.TYPE_12__*) #1

declare dso_local i32 @free(i32) #1

declare dso_local i32 @free_credentials(%struct.TYPE_12__*) #1

declare dso_local i32 @memset(%struct.TYPE_12__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
