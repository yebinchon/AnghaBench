; ModuleID = '/home/carl/AnghaBench/kphp-kdb/geoip/extr_geoip.c_run.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/geoip/extr_geoip.c_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@buff = common dso_local global i32* null, align 8
@stdin = common dso_local global i32 0, align 4
@mode = common dso_local global i32 0, align 4
@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"add: start_ip = %u.%u.%u.%u, end_ip = %u.%u.%u.%u, color = %d\0A\00", align 1
@root = common dso_local global i32 0, align 4
@rules = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"total %d rules\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"total %d vertices\0A\00", align 1
@total = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @run() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  br label %5

5:                                                ; preds = %0, %24, %161
  %6 = load i32*, i32** @buff, align 8
  %7 = load i32, i32* @stdin, align 4
  %8 = call i32 @fgets(i32* %6, i32 1000000, i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %5
  br label %171

11:                                               ; preds = %5
  %12 = call i32 (...) @init_parse()
  %13 = load i32*, i32** @buff, align 8
  %14 = load i32, i32* %13, align 4
  %15 = icmp eq i32 %14, 10
  br i1 %15, label %24, label %16

16:                                               ; preds = %11
  %17 = load i32*, i32** @buff, align 8
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %18, 13
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = load i32*, i32** @buff, align 8
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 35
  br i1 %23, label %24, label %25

24:                                               ; preds = %20, %16, %11
  br label %5

25:                                               ; preds = %20
  %26 = load i32, i32* @mode, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %73, label %28

28:                                               ; preds = %25
  %29 = call i32 (...) @parse_ip()
  store i32 %29, i32* %1, align 4
  %30 = call i32 (...) @end_parse()
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  %35 = call i32 (...) @parse_ip()
  store i32 %35, i32* %2, align 4
  %36 = call i32 (...) @end_parse()
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = call i32 @assert(i32 %39)
  %41 = load i32, i32* %1, align 4
  %42 = call i32 (...) @parse_int()
  %43 = icmp eq i32 %41, %42
  %44 = zext i1 %43 to i32
  %45 = call i32 @assert(i32 %44)
  %46 = call i32 (...) @end_parse()
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  %50 = call i32 @assert(i32 %49)
  %51 = load i32, i32* %2, align 4
  %52 = call i32 (...) @parse_int()
  %53 = icmp eq i32 %51, %52
  %54 = zext i1 %53 to i32
  %55 = call i32 @assert(i32 %54)
  %56 = call i32 (...) @end_parse()
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  %60 = call i32 @assert(i32 %59)
  %61 = call i32 (...) @parse_country()
  store i32 %61, i32* %3, align 4
  %62 = load i32, i32* %3, align 4
  %63 = call i32 @assert(i32 %62)
  %64 = call i32 (...) @end_parse()
  %65 = icmp ne i32 %64, 0
  %66 = xor i1 %65, true
  %67 = zext i1 %66 to i32
  %68 = call i32 @assert(i32 %67)
  %69 = call i32 (...) @parse_string()
  %70 = call i32 @assert(i32 %69)
  %71 = call i32 (...) @end_parse()
  %72 = call i32 @assert(i32 %71)
  br label %130

73:                                               ; preds = %25
  %74 = load i32, i32* @mode, align 4
  %75 = icmp eq i32 %74, 1
  br i1 %75, label %76, label %86

76:                                               ; preds = %73
  %77 = call i32 @parse_ip_mask(i32* %1, i32* %2)
  %78 = call i32 (...) @end_parse()
  %79 = icmp ne i32 %78, 0
  %80 = xor i1 %79, true
  %81 = zext i1 %80 to i32
  %82 = call i32 @assert(i32 %81)
  %83 = call i32 (...) @parse_int()
  store i32 %83, i32* %3, align 4
  %84 = call i32 (...) @end_parse()
  %85 = call i32 @assert(i32 %84)
  br label %129

86:                                               ; preds = %73
  %87 = load i32, i32* @mode, align 4
  %88 = icmp eq i32 %87, 2
  br i1 %88, label %89, label %126

89:                                               ; preds = %86
  %90 = call i32 (...) @parse_ip()
  store i32 %90, i32* %1, align 4
  %91 = call i32 (...) @end_parse()
  %92 = icmp ne i32 %91, 0
  %93 = xor i1 %92, true
  %94 = zext i1 %93 to i32
  %95 = call i32 @assert(i32 %94)
  %96 = call i32 (...) @parse_ip()
  store i32 %96, i32* %2, align 4
  %97 = call i32 (...) @end_parse()
  %98 = icmp ne i32 %97, 0
  %99 = xor i1 %98, true
  %100 = zext i1 %99 to i32
  %101 = call i32 @assert(i32 %100)
  %102 = call i32 (...) @parse_country()
  store i32 %102, i32* %3, align 4
  %103 = load i32, i32* %3, align 4
  %104 = call i32 @assert(i32 %103)
  %105 = call i32 (...) @end_parse()
  %106 = icmp ne i32 %105, 0
  %107 = xor i1 %106, true
  %108 = zext i1 %107 to i32
  %109 = call i32 @assert(i32 %108)
  %110 = call i32 (...) @parse_country()
  store i32 %110, i32* %4, align 4
  %111 = call i32 (...) @end_parse()
  %112 = icmp ne i32 %111, 0
  %113 = xor i1 %112, true
  %114 = zext i1 %113 to i32
  %115 = call i32 @assert(i32 %114)
  %116 = call i32 (...) @skip_parse()
  %117 = icmp eq i32 %116, 6
  %118 = zext i1 %117 to i32
  %119 = call i32 @assert(i32 %118)
  %120 = call i32 (...) @end_parse()
  %121 = call i32 @assert(i32 %120)
  %122 = load i32, i32* %3, align 4
  %123 = shl i32 %122, 16
  %124 = load i32, i32* %4, align 4
  %125 = add i32 %123, %124
  store i32 %125, i32* %3, align 4
  br label %128

126:                                              ; preds = %86
  %127 = call i32 @assert(i32 0)
  br label %128

128:                                              ; preds = %126, %89
  br label %129

129:                                              ; preds = %128, %76
  br label %130

130:                                              ; preds = %129, %28
  %131 = load i32, i32* @verbosity, align 4
  %132 = icmp sge i32 %131, 3
  br i1 %132, label %133, label %161

133:                                              ; preds = %130
  %134 = load i32, i32* @stderr, align 4
  %135 = load i32, i32* %1, align 4
  %136 = lshr i32 %135, 24
  %137 = and i32 %136, 255
  %138 = load i32, i32* %1, align 4
  %139 = lshr i32 %138, 16
  %140 = and i32 %139, 255
  %141 = load i32, i32* %1, align 4
  %142 = lshr i32 %141, 8
  %143 = and i32 %142, 255
  %144 = load i32, i32* %1, align 4
  %145 = lshr i32 %144, 0
  %146 = and i32 %145, 255
  %147 = load i32, i32* %2, align 4
  %148 = lshr i32 %147, 24
  %149 = and i32 %148, 255
  %150 = load i32, i32* %2, align 4
  %151 = lshr i32 %150, 16
  %152 = and i32 %151, 255
  %153 = load i32, i32* %2, align 4
  %154 = lshr i32 %153, 8
  %155 = and i32 %154, 255
  %156 = load i32, i32* %2, align 4
  %157 = lshr i32 %156, 0
  %158 = and i32 %157, 255
  %159 = load i32, i32* %3, align 4
  %160 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %134, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %137, i32 %140, i32 %143, i32 %146, i32 %149, i32 %152, i32 %155, i32 %158, i32 %159)
  br label %161

161:                                              ; preds = %133, %130
  %162 = load i32, i32* %1, align 4
  %163 = load i32, i32* %2, align 4
  %164 = load i32, i32* %3, align 4
  %165 = load i32, i32* %2, align 4
  %166 = load i32, i32* %1, align 4
  %167 = sub i32 %165, %166
  %168 = call i32 @add(i32* @root, i32 %162, i32 %163, i32 %164, i32 %167)
  %169 = load i32, i32* @rules, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* @rules, align 4
  br label %5

171:                                              ; preds = %10
  %172 = load i32, i32* @verbosity, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %181

174:                                              ; preds = %171
  %175 = load i32, i32* @stderr, align 4
  %176 = load i32, i32* @rules, align 4
  %177 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %175, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %176)
  %178 = load i32, i32* @stderr, align 4
  %179 = load i32, i32* @total, align 4
  %180 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %178, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %179)
  br label %181

181:                                              ; preds = %174, %171
  %182 = call i32 @pack(i32* @root)
  ret void
}

declare dso_local i32 @fgets(i32*, i32, i32) #1

declare dso_local i32 @init_parse(...) #1

declare dso_local i32 @parse_ip(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @end_parse(...) #1

declare dso_local i32 @parse_int(...) #1

declare dso_local i32 @parse_country(...) #1

declare dso_local i32 @parse_string(...) #1

declare dso_local i32 @parse_ip_mask(i32*, i32*) #1

declare dso_local i32 @skip_parse(...) #1

declare dso_local i32 @fprintf(i32, i8*, i32, ...) #1

declare dso_local i32 @add(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @pack(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
