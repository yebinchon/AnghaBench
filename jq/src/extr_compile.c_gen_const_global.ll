; ModuleID = '/home/carl/AnghaBench/jq/src/extr_compile.c_gen_const_global.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_compile.c_gen_const_global.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@STORE_GLOBAL = common dso_local global i32 0, align 4
@OP_HAS_CONSTANT = common dso_local global i32 0, align 4
@OP_HAS_VARIABLE = common dso_local global i32 0, align 4
@OP_HAS_BINDING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gen_const_global(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %6 = load i32, i32* @STORE_GLOBAL, align 4
  %7 = call %struct.TYPE_8__* @opcode_describe(i32 %6)
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @OP_HAS_CONSTANT, align 4
  %11 = load i32, i32* @OP_HAS_VARIABLE, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @OP_HAS_BINDING, align 4
  %14 = or i32 %12, %13
  %15 = and i32 %9, %14
  %16 = load i32, i32* @OP_HAS_CONSTANT, align 4
  %17 = load i32, i32* @OP_HAS_VARIABLE, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @OP_HAS_BINDING, align 4
  %20 = or i32 %18, %19
  %21 = icmp eq i32 %15, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load i32, i32* @STORE_GLOBAL, align 4
  %25 = call %struct.TYPE_7__* @inst_new(i32 %24)
  store %struct.TYPE_7__* %25, %struct.TYPE_7__** %5, align 8
  %26 = load i32, i32* %3, align 4
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 4
  %30 = load i8*, i8** %4, align 8
  %31 = call i32 @strdup(i8* %30)
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 8
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  store i64 0, i64* %35, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %37 = call i32 @inst_block(%struct.TYPE_7__* %36)
  ret i32 %37
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_8__* @opcode_describe(i32) #1

declare dso_local %struct.TYPE_7__* @inst_new(i32) #1

declare dso_local i32 @strdup(i8*) #1

declare dso_local i32 @inst_block(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
