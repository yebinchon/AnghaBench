; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/lib/extr_sstep.c_emulate_update_regs.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/lib/extr_sstep.c_emulate_update_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32, i64*, i32, i64, i32, i32, i32 }
%struct.instruction_op = type { i32, i64, i64, i32, i32, i32 }

@SETREG = common dso_local global i32 0, align 4
@SETCC = common dso_local global i32 0, align 4
@SETXER = common dso_local global i32 0, align 4
@SETLK = common dso_local global i32 0, align 4
@BRTAKEN = common dso_local global i32 0, align 4
@DECCTR = common dso_local global i32 0, align 4
@BARRIER_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @emulate_update_regs(%struct.pt_regs* %0, %struct.instruction_op* %1) #0 {
  %3 = alloca %struct.pt_regs*, align 8
  %4 = alloca %struct.instruction_op*, align 8
  %5 = alloca i64, align 8
  store %struct.pt_regs* %0, %struct.pt_regs** %3, align 8
  store %struct.instruction_op* %1, %struct.instruction_op** %4, align 8
  %6 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %7 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %6, i32 0, i32 6
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %10 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = add nsw i32 %11, 4
  %13 = call i64 @truncate_if_32bit(i32 %8, i32 %12)
  store i64 %13, i64* %5, align 8
  %14 = load %struct.instruction_op*, %struct.instruction_op** %4, align 8
  %15 = getelementptr inbounds %struct.instruction_op, %struct.instruction_op* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @GETTYPE(i32 %16)
  switch i32 %17, label %184 [
    i32 133, label %18
    i32 134, label %63
    i32 140, label %98
    i32 132, label %113
    i32 131, label %156
  ]

18:                                               ; preds = %2
  %19 = load %struct.instruction_op*, %struct.instruction_op** %4, align 8
  %20 = getelementptr inbounds %struct.instruction_op, %struct.instruction_op* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @SETREG, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %18
  %26 = load %struct.instruction_op*, %struct.instruction_op** %4, align 8
  %27 = getelementptr inbounds %struct.instruction_op, %struct.instruction_op* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %30 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %29, i32 0, i32 1
  %31 = load i64*, i64** %30, align 8
  %32 = load %struct.instruction_op*, %struct.instruction_op** %4, align 8
  %33 = getelementptr inbounds %struct.instruction_op, %struct.instruction_op* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds i64, i64* %31, i64 %34
  store i64 %28, i64* %35, align 8
  br label %36

36:                                               ; preds = %25, %18
  %37 = load %struct.instruction_op*, %struct.instruction_op** %4, align 8
  %38 = getelementptr inbounds %struct.instruction_op, %struct.instruction_op* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @SETCC, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %36
  %44 = load %struct.instruction_op*, %struct.instruction_op** %4, align 8
  %45 = getelementptr inbounds %struct.instruction_op, %struct.instruction_op* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %48 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %47, i32 0, i32 5
  store i32 %46, i32* %48, align 4
  br label %49

49:                                               ; preds = %43, %36
  %50 = load %struct.instruction_op*, %struct.instruction_op** %4, align 8
  %51 = getelementptr inbounds %struct.instruction_op, %struct.instruction_op* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @SETXER, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %49
  %57 = load %struct.instruction_op*, %struct.instruction_op** %4, align 8
  %58 = getelementptr inbounds %struct.instruction_op, %struct.instruction_op* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %61 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 8
  br label %62

62:                                               ; preds = %56, %49
  br label %186

63:                                               ; preds = %2
  %64 = load %struct.instruction_op*, %struct.instruction_op** %4, align 8
  %65 = getelementptr inbounds %struct.instruction_op, %struct.instruction_op* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @SETLK, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %63
  %71 = load i64, i64* %5, align 8
  %72 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %73 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %72, i32 0, i32 3
  store i64 %71, i64* %73, align 8
  br label %74

74:                                               ; preds = %70, %63
  %75 = load %struct.instruction_op*, %struct.instruction_op** %4, align 8
  %76 = getelementptr inbounds %struct.instruction_op, %struct.instruction_op* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @BRTAKEN, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %74
  %82 = load %struct.instruction_op*, %struct.instruction_op** %4, align 8
  %83 = getelementptr inbounds %struct.instruction_op, %struct.instruction_op* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  store i64 %84, i64* %5, align 8
  br label %85

85:                                               ; preds = %81, %74
  %86 = load %struct.instruction_op*, %struct.instruction_op** %4, align 8
  %87 = getelementptr inbounds %struct.instruction_op, %struct.instruction_op* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @DECCTR, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %85
  %93 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %94 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 8
  %96 = add nsw i32 %95, -1
  store i32 %96, i32* %94, align 8
  br label %97

97:                                               ; preds = %92, %85
  br label %186

98:                                               ; preds = %2
  %99 = load %struct.instruction_op*, %struct.instruction_op** %4, align 8
  %100 = getelementptr inbounds %struct.instruction_op, %struct.instruction_op* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @BARRIER_MASK, align 4
  %103 = and i32 %101, %102
  switch i32 %103, label %112 [
    i32 135, label %104
    i32 138, label %106
    i32 139, label %108
    i32 137, label %110
    i32 136, label %111
  ]

104:                                              ; preds = %98
  %105 = call i32 (...) @mb()
  br label %112

106:                                              ; preds = %98
  %107 = call i32 (...) @isync()
  br label %112

108:                                              ; preds = %98
  %109 = call i32 (...) @eieio()
  br label %112

110:                                              ; preds = %98
  call void asm sideeffect "lwsync", "~{memory},~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  br label %112

111:                                              ; preds = %98
  call void asm sideeffect "ptesync", "~{memory},~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !3
  br label %112

112:                                              ; preds = %98, %111, %110, %108, %106, %104
  br label %186

113:                                              ; preds = %2
  %114 = load %struct.instruction_op*, %struct.instruction_op** %4, align 8
  %115 = getelementptr inbounds %struct.instruction_op, %struct.instruction_op* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 4
  switch i32 %116, label %153 [
    i32 128, label %117
    i32 129, label %130
    i32 130, label %141
  ]

117:                                              ; preds = %113
  %118 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %119 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = sext i32 %120 to i64
  %122 = and i64 %121, 4294967295
  %123 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %124 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %123, i32 0, i32 1
  %125 = load i64*, i64** %124, align 8
  %126 = load %struct.instruction_op*, %struct.instruction_op** %4, align 8
  %127 = getelementptr inbounds %struct.instruction_op, %struct.instruction_op* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = getelementptr inbounds i64, i64* %125, i64 %128
  store i64 %122, i64* %129, align 8
  br label %155

130:                                              ; preds = %113
  %131 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %132 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %131, i32 0, i32 3
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %135 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %134, i32 0, i32 1
  %136 = load i64*, i64** %135, align 8
  %137 = load %struct.instruction_op*, %struct.instruction_op** %4, align 8
  %138 = getelementptr inbounds %struct.instruction_op, %struct.instruction_op* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = getelementptr inbounds i64, i64* %136, i64 %139
  store i64 %133, i64* %140, align 8
  br label %155

141:                                              ; preds = %113
  %142 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %143 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %142, i32 0, i32 4
  %144 = load i32, i32* %143, align 8
  %145 = sext i32 %144 to i64
  %146 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %147 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %146, i32 0, i32 1
  %148 = load i64*, i64** %147, align 8
  %149 = load %struct.instruction_op*, %struct.instruction_op** %4, align 8
  %150 = getelementptr inbounds %struct.instruction_op, %struct.instruction_op* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = getelementptr inbounds i64, i64* %148, i64 %151
  store i64 %145, i64* %152, align 8
  br label %155

153:                                              ; preds = %113
  %154 = call i32 @WARN_ON_ONCE(i32 1)
  br label %155

155:                                              ; preds = %153, %141, %130, %117
  br label %186

156:                                              ; preds = %2
  %157 = load %struct.instruction_op*, %struct.instruction_op** %4, align 8
  %158 = getelementptr inbounds %struct.instruction_op, %struct.instruction_op* %157, i32 0, i32 4
  %159 = load i32, i32* %158, align 4
  switch i32 %159, label %181 [
    i32 128, label %160
    i32 129, label %168
    i32 130, label %174
  ]

160:                                              ; preds = %156
  %161 = load %struct.instruction_op*, %struct.instruction_op** %4, align 8
  %162 = getelementptr inbounds %struct.instruction_op, %struct.instruction_op* %161, i32 0, i32 2
  %163 = load i64, i64* %162, align 8
  %164 = and i64 %163, 4294967295
  %165 = trunc i64 %164 to i32
  %166 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %167 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %166, i32 0, i32 2
  store i32 %165, i32* %167, align 8
  br label %183

168:                                              ; preds = %156
  %169 = load %struct.instruction_op*, %struct.instruction_op** %4, align 8
  %170 = getelementptr inbounds %struct.instruction_op, %struct.instruction_op* %169, i32 0, i32 2
  %171 = load i64, i64* %170, align 8
  %172 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %173 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %172, i32 0, i32 3
  store i64 %171, i64* %173, align 8
  br label %183

174:                                              ; preds = %156
  %175 = load %struct.instruction_op*, %struct.instruction_op** %4, align 8
  %176 = getelementptr inbounds %struct.instruction_op, %struct.instruction_op* %175, i32 0, i32 2
  %177 = load i64, i64* %176, align 8
  %178 = trunc i64 %177 to i32
  %179 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %180 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %179, i32 0, i32 4
  store i32 %178, i32* %180, align 8
  br label %183

181:                                              ; preds = %156
  %182 = call i32 @WARN_ON_ONCE(i32 1)
  br label %183

183:                                              ; preds = %181, %174, %168, %160
  br label %186

184:                                              ; preds = %2
  %185 = call i32 @WARN_ON_ONCE(i32 1)
  br label %186

186:                                              ; preds = %184, %183, %155, %112, %97, %62
  %187 = load i64, i64* %5, align 8
  %188 = trunc i64 %187 to i32
  %189 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %190 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %189, i32 0, i32 0
  store i32 %188, i32* %190, align 8
  ret void
}

declare dso_local i64 @truncate_if_32bit(i32, i32) #1

declare dso_local i32 @GETTYPE(i32) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @isync(...) #1

declare dso_local i32 @eieio(...) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 1303}
!3 = !{i32 1367}
